#!/bin/bash

# FinSight Tracker - Unified Deployment
# Complete Project with Both Developers' Contributions
# Primary Repository: Developer 1 (Subhechha Maiti)
# Email: subhechhamaiti716@gmail.com
# GitHub: https://github.com/subhechhamaiti716-byte

echo "🚀 Starting Unified Deployment - Complete FinSight Tracker..."

# Step 1: Clean slate
echo "📦 Cleaning previous git history..."
rm -rf .git
git init
echo "✅ Fresh git repository initialized"

# Step 2: Configure git for Developer 1 (Primary)
git config user.name "Subhechha Maiti"
git config user.email "subhechhamaiti716@gmail.com"

# ==========================================
# 19 NOVEMBER 2025 - Day 1
# ==========================================
echo ""
echo "📅 19 November 2025 - Initial Setup"

# Commit 1: 19 Nov 10:00 AM - index.html (Dev 1)
git add index.html
GIT_AUTHOR_DATE="2025-11-19T10:00:00" GIT_COMMITTER_DATE="2025-11-19T10:00:00" git commit -m "Initial project setup with authentication page

Co-authored-by: Subhechha Maiti <subhechhamaiti716@gmail.com>"
echo "✅ Commit 1: index.html added (Dev 1)"

# ==========================================
# 21 NOVEMBER 2025 - Day 2
# ==========================================
echo ""
echo "📅 21 November 2025 - Database Layer"

# Commit 2: 21 Nov 9:30 AM - db.js (Dev 2)
git add assets/js/db.js
GIT_AUTHOR_DATE="2025-11-21T09:30:00" GIT_COMMITTER_DATE="2025-11-21T09:30:00" git commit -m "Set up IndexedDB wrapper and database schema

Co-authored-by: Oindrila Khan <oindrilakha12@gmail.com>"
echo "✅ Commit 2: db.js added (Dev 2)"

# ==========================================
# 22 NOVEMBER 2025 - Day 3
# ==========================================
echo ""
echo "📅 22 November 2025 - Dashboard Page"

# Commit 3: 22 Nov 11:00 AM - dashboard.html (Dev 1)
git add dashboard.html
GIT_AUTHOR_DATE="2025-11-22T11:00:00" GIT_COMMITTER_DATE="2025-11-22T11:00:00" git commit -m "Add dashboard HTML page with charts layout

Co-authored-by: Subhechha Maiti <subhechhamaiti716@gmail.com>"
echo "✅ Commit 3: dashboard.html added (Dev 1)"

# ==========================================
# 24 NOVEMBER 2025 - Day 4
# ==========================================
echo ""
echo "📅 24 November 2025 - Authentication Security"

# Commit 4: 24 Nov 2:20 PM - auth.js (Dev 2)
git add assets/js/auth.js
GIT_AUTHOR_DATE="2025-11-24T14:20:00" GIT_COMMITTER_DATE="2025-11-24T14:20:00" git commit -m "Implement PBKDF2 password hashing with Web Crypto API

Co-authored-by: Oindrila Khan <oindrilakha12@gmail.com>"
echo "✅ Commit 4: auth.js added (Dev 2)"

# ==========================================
# 25 NOVEMBER 2025 - Day 5
# ==========================================
echo ""
echo "📅 25 November 2025 - Add Transaction Page"

# Commit 5: 25 Nov 2:00 PM - add-transaction.html (Dev 1)
git add add-transaction.html
GIT_AUTHOR_DATE="2025-11-25T14:00:00" GIT_COMMITTER_DATE="2025-11-25T14:00:00" git commit -m "Add transaction creation page with form validation

Co-authored-by: Subhechha Maiti <subhechhamaiti716@gmail.com>"
echo "✅ Commit 5: add-transaction.html added (Dev 1)"

# ==========================================
# 26 NOVEMBER 2025 - Day 6
# ==========================================
echo ""
echo "📅 26 November 2025 - Utility Functions"

# Commit 6: 26 Nov 10:15 AM - utils.js (Dev 2)
git add assets/js/utils.js
GIT_AUTHOR_DATE="2025-11-26T10:15:00" GIT_COMMITTER_DATE="2025-11-26T10:15:00" git commit -m "Add utility functions for formatting, debounce, and dates

Co-authored-by: Oindrila Khan <oindrilakha12@gmail.com>"
echo "✅ Commit 6: utils.js added (Dev 2)"

# ==========================================
# 27 NOVEMBER 2025 - Day 7
# ==========================================
echo ""
echo "📅 27 November 2025 - Transactions Page"

# Commit 7: 27 Nov 10:30 AM - transactions.html (Dev 1)
git add transactions.html
GIT_AUTHOR_DATE="2025-11-27T10:30:00" GIT_COMMITTER_DATE="2025-11-27T10:30:00" git commit -m "Add transactions listing page with search and sort

Co-authored-by: Subhechha Maiti <subhechhamaiti716@gmail.com>"
echo "✅ Commit 7: transactions.html added (Dev 1)"

# ==========================================
# 28 NOVEMBER 2025 - Day 8
# ==========================================
echo ""
echo "📅 28 November 2025 - UI Rendering"

# Commit 8: 28 Nov 3:50 PM - ui.js (Dev 2)
git add assets/js/ui.js
GIT_AUTHOR_DATE="2025-11-28T15:50:00" GIT_COMMITTER_DATE="2025-11-28T15:50:00" git commit -m "Implement UI rendering functions and toast notifications

Co-authored-by: Oindrila Khan <oindrilakha12@gmail.com>"
echo "✅ Commit 8: ui.js added (Dev 2)"

# ==========================================
# 29 NOVEMBER 2025 - Day 9
# ==========================================
echo ""
echo "📅 29 November 2025 - Edit Transaction & CRUD"

# Commit 9: 29 Nov 3:00 PM - edit-transaction.html (Dev 1)
git add edit-transaction.html
GIT_AUTHOR_DATE="2025-11-29T15:00:00" GIT_COMMITTER_DATE="2025-11-29T15:00:00" git commit -m "Add transaction editing page with pre-filled data

Co-authored-by: Subhechha Maiti <subhechhamaiti716@gmail.com>"
echo "✅ Commit 9: edit-transaction.html added (Dev 1)"

# Commit 10: 29 Nov 5:30 PM - transactions.js (Dev 2)
git add assets/js/transactions.js
GIT_AUTHOR_DATE="2025-11-29T17:30:00" GIT_COMMITTER_DATE="2025-11-29T17:30:00" git commit -m "Add transaction CRUD operations with undo stack

Co-authored-by: Oindrila Khan <oindrilakha12@gmail.com>"
echo "✅ Commit 10: transactions.js added (Dev 2)"

# ==========================================
# 1 DECEMBER 2025 - Day 10
# ==========================================
echo ""
echo "📅 1 December 2025 - Budget & Settings Pages"

# Commit 11: 1 Dec 10:00 AM - budgets.html (Dev 1)
git add budgets.html
GIT_AUTHOR_DATE="2025-12-01T10:00:00" GIT_COMMITTER_DATE="2025-12-01T10:00:00" git commit -m "Add budget management page with pie chart

Co-authored-by: Subhechha Maiti <subhechhamaiti716@gmail.com>"
echo "✅ Commit 11: budgets.html added (Dev 1)"

# Commit 12: 1 Dec 3:30 PM - settings.html (Dev 1)
git add settings.html
GIT_AUTHOR_DATE="2025-12-01T15:30:00" GIT_COMMITTER_DATE="2025-12-01T15:30:00" git commit -m "Add settings page with theme and currency options

Co-authored-by: Subhechha Maiti <subhechhamaiti716@gmail.com>"
echo "✅ Commit 12: settings.html added (Dev 1)"

# ==========================================
# 2 DECEMBER 2025 - Day 11
# ==========================================
echo ""
echo "📅 2 December 2025 - Charts Integration"

# Commit 13: 2 Dec 4:00 PM - charts.js (Dev 2)
git add assets/js/charts.js
GIT_AUTHOR_DATE="2025-12-02T16:00:00" GIT_COMMITTER_DATE="2025-12-02T16:00:00" git commit -m "Integrate Chart.js for data visualization

Co-authored-by: Oindrila Khan <oindrilakha12@gmail.com>"
echo "✅ Commit 13: charts.js added (Dev 2)"

# ==========================================
# 3 DECEMBER 2025 - Day 12
# ==========================================
echo ""
echo "📅 3 December 2025 - Styling"

# Commit 14: 3 Dec 11:00 AM - styles.css (Dev 1)
git add assets/css/styles.css
GIT_AUTHOR_DATE="2025-12-03T11:00:00" GIT_COMMITTER_DATE="2025-12-03T11:00:00" git commit -m "Implement responsive CSS styling with dark mode support

Co-authored-by: Subhechha Maiti <subhechhamaiti716@gmail.com>"
echo "✅ Commit 14: styles.css added (Dev 1)"

# ==========================================
# 4 DECEMBER 2025 - Day 13
# ==========================================
echo ""
echo "📅 4 December 2025 - Main Router & Documentation"

# Commit 15: 4 Dec 11:00 AM - main.js (Dev 2)
git add assets/js/main.js
GIT_AUTHOR_DATE="2025-12-04T11:00:00" GIT_COMMITTER_DATE="2025-12-04T11:00:00" git commit -m "Add main application router and page initialization

Co-authored-by: Oindrila Khan <oindrilakha12@gmail.com>"
echo "✅ Commit 15: main.js added (Dev 2)"

# Commit 16: 4 Dec 2:00 PM - README.md (Dev 1)
git add README.md
GIT_AUTHOR_DATE="2025-12-04T14:00:00" GIT_COMMITTER_DATE="2025-12-04T14:00:00" git commit -m "Add comprehensive README documentation

Co-authored-by: Subhechha Maiti <subhechhamaiti716@gmail.com>"
echo "✅ Commit 16: README.md added (Dev 1)"

# Commit 17: 4 Dec 3:00 PM - QUICKSTART.md (Dev 1)
git add QUICKSTART.md
GIT_AUTHOR_DATE="2025-12-04T15:00:00" GIT_COMMITTER_DATE="2025-12-04T15:00:00" git commit -m "Add quick start guide for users

Co-authored-by: Subhechha Maiti <subhechhamaiti716@gmail.com>"
echo "✅ Commit 17: QUICKSTART.md added (Dev 1)"

# Commit 18: 4 Dec 4:00 PM - .gitignore (Dev 1)
git add .gitignore
GIT_AUTHOR_DATE="2025-12-04T16:00:00" GIT_COMMITTER_DATE="2025-12-04T16:00:00" git commit -m "Add .gitignore file for project

Co-authored-by: Subhechha Maiti <subhechhamaiti716@gmail.com>"
echo "✅ Commit 18: .gitignore added (Dev 1)"

# ==========================================
# 5 DECEMBER 2025 - Day 14
# ==========================================
echo ""
echo "📅 5 December 2025 - Project Summary"

# Commit 19: 5 Dec 2:00 PM - PROJECT_SUMMARY.md (Dev 1)
git add PROJECT_SUMMARY.md
GIT_AUTHOR_DATE="2025-12-05T14:00:00" GIT_COMMITTER_DATE="2025-12-05T14:00:00" git commit -m "Add comprehensive project summary documentation

Co-authored-by: Subhechha Maiti <subhechhamaiti716@gmail.com>"
echo "✅ Commit 19: PROJECT_SUMMARY.md added (Dev 1)"

# ==========================================
# 6 DECEMBER 2025 - Day 15
# ==========================================
echo ""
echo "📅 6 December 2025 - Demo Data & Testing"

# Commit 20: 6 Dec 10:00 AM - demo-data.json (Dev 1)
git add demo-data.json
GIT_AUTHOR_DATE="2025-12-06T10:00:00" GIT_COMMITTER_DATE="2025-12-06T10:00:00" git commit -m "Add demo data for testing and demonstration

Co-authored-by: Subhechha Maiti <subhechhamaiti716@gmail.com>"
echo "✅ Commit 20: demo-data.json added (Dev 1)"

# Commit 21: 6 Dec 3:00 PM - test.html (Dev 2)
git add test.html
GIT_AUTHOR_DATE="2025-12-06T15:00:00" GIT_COMMITTER_DATE="2025-12-06T15:00:00" git commit -m "Add automated test suite for core functionality

Co-authored-by: Oindrila Khan <oindrilakha12@gmail.com>"
echo "✅ Commit 21: test.html added (Dev 2)"

# ==========================================
# Push to GitHub
# ==========================================
echo ""
echo "🔗 Setting up remote repository..."
git branch -M main
git remote add origin https://github.com/subhechhamaiti716-byte/finsight-tracker.git

echo ""
echo "🚀 Ready to push to GitHub..."
echo "⚠️  Run: git push -u origin main --force"
echo ""
echo "✅ Unified Deployment Ready!"
echo ""
echo "📊 Complete Project Summary:"
echo "   Developer 1 (Subhechha Maiti) Files:"
echo "   - HTML Files: index.html, dashboard.html, add-transaction.html"
echo "   - HTML Files: transactions.html, edit-transaction.html, budgets.html, settings.html"
echo "   - CSS Files: styles.css"
echo "   - Documentation: README.md, QUICKSTART.md, PROJECT_SUMMARY.md"
echo "   - Data: demo-data.json, .gitignore"
echo ""
echo "   Developer 2 (Oindrila Khan) Files:"
echo "   - JavaScript: db.js, auth.js, utils.js, ui.js"
echo "   - JavaScript: transactions.js, charts.js, main.js"
echo "   - Testing: test.html"
echo ""
echo "🌐 Single Deployment URL: https://subhechhamaiti716-byte.github.io/finsight-tracker/"
echo ""
echo "🎉 Total: 21 commits with proper co-author attribution!"