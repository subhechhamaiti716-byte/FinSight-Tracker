# FinSight Tracker

A complete, client-only personal finance management web application built with vanilla JavaScript, IndexedDB, and Chart.js.

## Features

- Secure Authentication: Client-side password hashing using PBKDF2 with SHA-256
- Transaction Management: Add, edit, delete, search, sort, and paginate transactions
- Visual Analytics: Interactive charts showing expense breakdown, income sources, and monthly trends
- Budget Tracking: Set category budgets and monitor spending
- Undo Functionality: Undo the last transaction action
- Debounced Search: Efficient search with 300ms debounce
- Responsive Design: Works on desktop, tablet, and mobile
- Dark Mode: Toggle between light and dark themes
- Multi-Currency: Support for INR, USD, EUR, JPY, and GBP
- Data Management: Export/import data as JSON, clear all data
- Offline-First: All data stored locally in IndexedDB

## File Structure

```
FinSight-Tracker/
├── index.html                  # Login/Signup page
├── dashboard.html              # Main dashboard with charts
├── transactions.html           # Transaction list with search/sort
├── add-transaction.html        # Add new transaction
├── edit-transaction.html       # Edit existing transaction
├── budgets.html                # Budget management
├── settings.html               # App settings
├── assets/
│   ├── css/
│   │   └── styles.css          # Global styles with dark mode
│   └── js/
│       ├── main.js             # App bootstrap and routing
│       ├── auth.js             # Authentication with PBKDF2
│       ├── db.js               # IndexedDB wrapper
│       ├── transactions.js     # Transaction CRUD and undo stack
│       ├── charts.js           # Chart.js setup
│       ├── ui.js               # UI rendering helpers
│       └── utils.js            # Utilities (debounce, formatters)
├── demo-data.json              # Sample data for testing
├── README.md                   # This file
└── test.html                   # Simple test harness
```

## How to Run

### Option 1: Simple HTTP Server (Recommended)

```bash
# Using Python 3
python -m http.server 8000

# Using Node.js
npx http-server -p 8000

# Using PHP
php -S localhost:8000
```

Then open `http://localhost:8000` in your browser.

### Option 2: File Protocol

Open `index.html` directly in your browser. Note: Some browsers may restrict IndexedDB access via `file://` protocol.

## Getting Started

### 1. Create an Account

1. Open the app in your browser
2. Click "Sign up" on the login page
3. Enter a username and password (minimum 6 characters)
4. Click "Sign Up"

### 2. Import Demo Data (Optional)

1. After logging in, go to **Settings**
2. Click "Import from JSON"
3. Select the `demo-data.json` file
4. The app will load sample transactions and budgets

### 3. Add Your First Transaction

1. Go to **Add Transaction**
2. Select type (Income or Expense)
3. Choose a category
4. Enter amount, date, and optional note
5. Click "Add Transaction"

### 4. View Dashboard

The dashboard shows:
- Total balance, income, and expenses
- Pie charts for expense and income breakdown
- Monthly bar chart
- Balance trend line
- Top spending category
- Recent transactions

## Key Features Explained

### Password Security

- Passwords are **never stored in plaintext**
- Uses Web Crypto API with PBKDF2 (100,000 iterations)
- Random 16-byte salt per user
- SHA-256 hash function
- Constant-time comparison to prevent timing attacks

**Security Note**: This is client-side security suitable for local data protection. For multi-device sync, server-side authentication is required.

### IndexedDB Structure

The app uses 5 object stores:

1. **users**: Stores username, salt, and password hash
2. **transactions**: Stores all transactions with auto-incrementing IDs
3. **budgets**: Stores budget amounts per category
4. **settings**: Stores theme and currency preferences
5. **categories**: Stores custom category lists

### Undo Stack

- Tracks last 10 actions (add, edit, delete)
- Click "Undo" button to reverse the most recent action
- Undo stack persists during session

### Debounced Search

- Search waits 300ms after typing stops before executing
- Searches in category, amount, and notes
- Improves performance by reducing unnecessary operations

### Charts

All charts are powered by Chart.js:
- **Pie Charts**: Expense and income breakdown by category
- **Bar Chart**: Monthly income, expenses, and savings
- **Line Charts**: Balance trend and spending analysis

## Testing

### Manual Testing Steps

1. **Authentication**:
   - Sign up with a new account
   - Log out and log back in
   - Try wrong password (should fail)

2. **Transactions**:
   - Add income and expense transactions
   - Edit a transaction
   - Delete a transaction
   - Use undo to restore deleted transaction

3. **Search & Sort**:
   - Search for transactions by category or amount
   - Sort by date, amount, and category

4. **Budgets**:
   - Set budgets for categories
   - Add transactions and watch budget progress update

5. **Settings**:
   - Toggle dark mode
   - Change currency (refresh to see changes)
   - Add custom categories
   - Export data
   - Import demo data

6. **Persistence**:
   - Add some data
   - Close browser completely
   - Reopen and verify data persists

### Automated Tests

Open `test.html` in your browser to run basic unit tests for:
- Password hashing and verification
- Transaction CRUD operations
- Search and sort functionality
- Undo stack operations

## Browser Compatibility

- Chrome/Edge: Full support
- Firefox: Full support
- Safari: Full support
- Opera: Full support

Requires:
- IndexedDB support
- Web Crypto API support
- ES6 modules support

## Data Management

### Reset Database

To completely reset the app:
1. Go to **Settings**
2. Click "Clear All Data"
3. Confirm twice
4. You'll be logged out and can create a new account

### Export Data

1. Go to **Settings**
2. Click "Export to JSON"
3. Save the file to your computer

### Import Data

1. Go to **Settings**
2. Click "Import from JSON"
3. Select a previously exported JSON file
4. Data will be imported and page will refresh

## Performance Optimizations

- **In-memory cache**: Transactions cached to avoid repeated DB reads
- **Debounced search**: Reduces search operations during typing
- **Pagination**: Only renders 10 transactions per page
- **Chart reuse**: Destroys old chart instances before creating new ones

## Accessibility Features

- Semantic HTML with proper heading hierarchy
- ARIA labels and roles on interactive elements
- Keyboard navigation support
- Focus indicators
- Screen reader friendly
- Adequate color contrast (WCAG AA compliant)

## Limitations

- **Client-side only**: No server sync, data stays on device
- **Single device**: No multi-device synchronization
- **Browser storage**: Limited by IndexedDB quota (usually 50MB+)
- **No backup**: Data loss if browser data is cleared (use export feature)

## Future Enhancements

- Recurring transactions
- Transaction attachments (receipts)
- Advanced filtering
- Custom date ranges
- Budget alerts/notifications
- CSV export
- Multiple accounts support

## Technical Implementation Highlights

### ES6 Modules
All JavaScript files use ES6 import/export for clean module separation.

### Async/Await
All database operations use async/await for readable asynchronous code.

### Web Crypto API
Secure password hashing using native browser cryptography.

### Chart.js
Responsive, accessible charts with proper ARIA labels.

### CSS Variables
Theme switching using CSS custom properties.

### Responsive Design
Mobile-first approach with CSS Grid and Flexbox.

## License

This project is provided as-is for educational purposes.

## Support

For issues or questions, please refer to the code comments which explain each function's purpose and implementation details.

---

**Built using Vanilla JavaScript, IndexedDB, and Chart.js**
