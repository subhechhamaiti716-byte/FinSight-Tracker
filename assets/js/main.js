/**
 * Main Application Module - Utility Functions
 * This file contains common utility functions used across the application
 * Note: Since we're using inline JavaScript in HTML files, this serves as a reference
 */

/**
 * Common utility functions that can be used across pages
 */

// Format currency with proper symbol
function formatCurrency(amount, currency = 'INR') {
    const symbols = {
        'INR': '₹',
        'USD': '$',
        'EUR': '€',
        'GBP': '£',
        'JPY': '¥'
    };
    
    const symbol = symbols[currency] || '₹';
    return symbol + amount.toLocaleString();
}

// Get current date in YYYY-MM-DD format
function getCurrentDate() {
    return new Date().toISOString().split('T')[0];
}

// Get current time in HH:MM format
function getCurrentTime() {
    return new Date().toTimeString().slice(0, 5);
}

// Debounce function for search inputs
function debounce(func, wait) {
    let timeout;
    return function executedFunction(...args) {
        const later = () => {
            clearTimeout(timeout);
            func(...args);
        };
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
    };
}

// Calculate transaction summary
function calculateTransactionSummary(transactions) {
    let totalIncome = 0;
    let totalExpenses = 0;
    
    transactions.forEach(tx => {
        if (tx.type === 'income') {
            totalIncome += tx.amount;
        } else if (tx.type === 'expense') {
            totalExpenses += tx.amount;
        }
    });
    
    return {
        totalIncome,
        totalExpenses,
        balance: totalIncome - totalExpenses
    };
}

// Group transactions by category
function groupTransactionsByCategory(transactions, type) {
    const grouped = {};
    
    transactions
        .filter(tx => tx.type === type)
        .forEach(tx => {
            grouped[tx.category] = (grouped[tx.category] || 0) + tx.amount;
        });
    
    return grouped;
}

// Get monthly data for charts
function getMonthlyTransactionData(transactions) {
    const monthlyData = {};
    
    transactions.forEach(tx => {
        const date = new Date(tx.date);
        const monthKey = date.toLocaleDateString('en-US', { month: 'short', year: 'numeric' });
        
        if (!monthlyData[monthKey]) {
            monthlyData[monthKey] = { income: 0, expenses: 0 };
        }
        
        if (tx.type === 'income') {
            monthlyData[monthKey].income += tx.amount;
        } else {
            monthlyData[monthKey].expenses += tx.amount;
        }
    });
    
    // Convert to array and sort by date
    return Object.keys(monthlyData)
        .sort((a, b) => new Date(a) - new Date(b))
        .map(month => ({
            month,
            income: monthlyData[month].income,
            expenses: monthlyData[month].expenses,
            savings: monthlyData[month].income - monthlyData[month].expenses
        }));
}

// Show toast notification
function showToast(message, type = 'info') {
    // Remove existing toast
    const existingToast = document.querySelector('.toast');
    if (existingToast) {
        existingToast.remove();
    }
    
    // Create new toast
    const toast = document.createElement('div');
    toast.className = `toast toast-${type}`;
    toast.textContent = message;
    
    // Add styles
    toast.style.cssText = `
        position: fixed;
        top: 20px;
        right: 20px;
        padding: 12px 20px;
        border-radius: 8px;
        color: white;
        font-weight: 500;
        z-index: 1000;
        animation: slideIn 0.3s ease;
    `;
    
    // Set background color based on type
    const colors = {
        success: '#10b981',
        error: '#ef4444',
        info: '#3b82f6',
        warning: '#f59e0b'
    };
    toast.style.backgroundColor = colors[type] || colors.info;
    
    // Add animation styles
    const style = document.createElement('style');
    style.textContent = `
        @keyframes slideIn {
            from { transform: translateX(100%); opacity: 0; }
            to { transform: translateX(0); opacity: 1; }
        }
    `;
    document.head.appendChild(style);
    
    document.body.appendChild(toast);
    
    // Auto remove after 3 seconds
    setTimeout(() => {
        toast.style.animation = 'slideIn 0.3s ease reverse';
        setTimeout(() => toast.remove(), 300);
    }, 3000);
}

// Setup mobile menu toggle
function setupMobileMenu() {
    const mobileMenuToggle = document.querySelector('.mobile-menu-toggle');
    const sidebar = document.querySelector('.sidebar');
    
    if (mobileMenuToggle && sidebar) {
        mobileMenuToggle.addEventListener('click', function() {
            sidebar.classList.toggle('active');
        });
    }
}

// Confirm dialog
function confirmAction(message) {
    return confirm(message);
}

// Get page name from URL
function getPageName() {
    const path = window.location.pathname;
    const page = path.split('/').pop().replace('.html', '');
    return page || 'dashboard';
}

// Sort transactions
function sortTransactions(transactions, sortBy) {
    const sorted = [...transactions];
    
    switch (sortBy) {
        case 'date-desc':
            return sorted.sort((a, b) => new Date(b.date) - new Date(a.date));
        case 'date-asc':
            return sorted.sort((a, b) => new Date(a.date) - new Date(b.date));
        case 'amount-desc':
            return sorted.sort((a, b) => b.amount - a.amount);
        case 'amount-asc':
            return sorted.sort((a, b) => a.amount - b.amount);
        case 'category-asc':
            return sorted.sort((a, b) => a.category.localeCompare(b.category));
        default:
            return sorted;
    }
}

// Paginate transactions
function paginateTransactions(transactions, page, itemsPerPage) {
    const startIndex = (page - 1) * itemsPerPage;
    const endIndex = startIndex + itemsPerPage;
    
    return {
        items: transactions.slice(startIndex, endIndex),
        total: transactions.length,
        totalPages: Math.ceil(transactions.length / itemsPerPage),
        currentPage: page,
        itemsPerPage
    };
}

// Search transactions
function searchTransactions(transactions, query) {
    if (!query) return transactions;
    
    const searchTerm = query.toLowerCase();
    return transactions.filter(tx => 
        tx.category.toLowerCase().includes(searchTerm) ||
        (tx.note && tx.note.toLowerCase().includes(searchTerm)) ||
        tx.amount.toString().includes(searchTerm)
    );
}

// Filter transactions by date range
function filterTransactionsByDateRange(transactions, startDate, endDate) {
    return transactions.filter(tx => {
        const txDate = new Date(tx.date);
        return txDate >= new Date(startDate) && txDate <= new Date(endDate);
    });
}

// Get date range for period
function getDateRangeForPeriod(period) {
    const now = new Date();
    let startDate, endDate;
    
    switch (period) {
        case 'week':
            startDate = new Date(now.setDate(now.getDate() - now.getDay()));
            endDate = new Date(now.setDate(now.getDate() - now.getDay() + 6));
            break;
        case 'month':
            startDate = new Date(now.getFullYear(), now.getMonth(), 1);
            endDate = new Date(now.getFullYear(), now.getMonth() + 1, 0);
            break;
        case 'year':
            startDate = new Date(now.getFullYear(), 0, 1);
            endDate = new Date(now.getFullYear(), 11, 31);
            break;
        default:
            startDate = new Date(now.getFullYear(), now.getMonth(), 1);
            endDate = new Date(now.getFullYear(), now.getMonth() + 1, 0);
    }
    
    return {
        start: startDate.toISOString().split('T')[0],
        end: endDate.toISOString().split('T')[0]
    };
}

// Render transaction list
function renderTransactionList(transactions, container, options = {}) {
    if (!container) return;
    
    const { currency = 'INR', showActions = true } = options;
    
    if (transactions.length === 0) {
        container.innerHTML = '<p class="no-transactions">No transactions yet. <a href="add-transaction.html">Add your first transaction</a></p>';
        return;
    }
    
    container.innerHTML = transactions.map(tx => `
        <div class="transaction-item" data-id="${tx.id}">
            <div class="transaction-info">
                <span class="transaction-category">${tx.category}</span>
                <span class="transaction-note">${tx.note || 'No note'}</span>
                <span class="transaction-date">${new Date(tx.date).toLocaleDateString()}</span>
            </div>
            <div class="transaction-amount ${tx.type}">
                ${tx.type === 'income' ? '+' : '-'}${formatCurrency(tx.amount, currency)}
            </div>
            ${showActions ? `
                <div class="transaction-actions">
                    <button onclick="editTransaction(${tx.id})" class="btn-edit">Edit</button>
                    <button onclick="deleteTransaction(${tx.id})" class="btn-delete">Delete</button>
                </div>
            ` : ''}
        </div>
    `).join('');
}

// Render pagination
function renderPagination(paginationData, container, onPageChange) {
    if (!container || paginationData.totalPages <= 1) {
        container.innerHTML = '';
        return;
    }
    
    const { currentPage, totalPages } = paginationData;
    let paginationHTML = '';
    
    // Previous button
    if (currentPage > 1) {
        paginationHTML += `<button onclick="changePage(${currentPage - 1})" class="pagination-btn">Previous</button>`;
    }
    
    // Page numbers
    for (let i = 1; i <= totalPages; i++) {
        if (i === currentPage) {
            paginationHTML += `<button class="pagination-btn active">${i}</button>`;
        } else {
            paginationHTML += `<button onclick="changePage(${i})" class="pagination-btn">${i}</button>`;
        }
    }
    
    // Next button
    if (currentPage < totalPages) {
        paginationHTML += `<button onclick="changePage(${currentPage + 1})" class="pagination-btn">Next</button>`;
    }
    
    container.innerHTML = paginationHTML;
    
    // Store the callback for page changes
    window.changePage = onPageChange;
}

// Validate form data
function validateTransactionForm(formData) {
    const errors = [];
    
    if (!formData.type) {
        errors.push('Transaction type is required');
    }
    
    if (!formData.category) {
        errors.push('Category is required');
    }
    
    if (!formData.amount || formData.amount <= 0) {
        errors.push('Amount must be greater than 0');
    }
    
    if (!formData.date) {
        errors.push('Date is required');
    }
    
    return errors;
}

// Generate unique ID for transactions
function generateTransactionId() {
    return Date.now() + Math.random().toString(36).substring(2, 11);
}

/**
 * Note: This file contains utility functions for reference.
 * The actual application uses inline JavaScript in each HTML file
 * for better compatibility and simpler deployment.
 * 
 * These functions can be copied into HTML files as needed.
 */

// Example usage in HTML files:
/*
<script>
    // Copy the utility functions you need from this file
    // For example:
    
    function formatCurrency(amount, currency = 'INR') {
        const symbols = { 'INR': '₹', 'USD': '$', 'EUR': '€', 'GBP': '£', 'JPY': '¥' };
        const symbol = symbols[currency] || '₹';
        return symbol + amount.toLocaleString();
    }
    
    function showToast(message, type = 'info') {
        // Toast implementation here
    }
    
    // Your page-specific code here
</script>
*/