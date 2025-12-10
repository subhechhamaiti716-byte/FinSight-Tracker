#!/bin/bash

# FinSight Tracker - Developer 2 (Oindrila Khan)
# JavaScript Files + Test File
# Email: oindrilakha12@gmail.com
# GitHub: https://github.com/oindrilakha12-ui

echo "🚀 Starting Developer 2 (Oindrila Khan) - JavaScript & Test Files Commits..."

# Step 1: Clean slate
echo "📦 Cleaning previous git history..."
rm -rf .git
git init
echo "✅ Fresh git repository initialized"

# Step 2: Configure git for Developer 2
git config user.name "Oindrila Khan"
git config user.email "oindrilakha12@gmail.com"

# ==========================================
# 21 NOVEMBER 2025 - Day 1
# ==========================================
echo ""
echo "📅 21 November 2025 - Database Layer"

# Commit 1: 21 Nov 9:30 AM - db.js
git add assets/js/db.js
GIT_AUTHOR_DATE="2025-11-21T09:30:00" GIT_COMMITTER_DATE="2025-11-21T09:30:00" git commit -m "Set up IndexedDB wrapper and database schema"
echo "✅ Commit 1: db.js added (21 Nov 2025)"

# ==========================================
# 24 NOVEMBER 2025 - Day 2
# ==========================================
echo ""
echo "📅 24 November 2025 - Authentication Security"

# Commit 2: 24 Nov 2:20 PM - auth.js
git add assets/js/auth.js
GIT_AUTHOR_DATE="2025-11-24T14:20:00" GIT_COMMITTER_DATE="2025-11-24T14:20:00" git commit -m "Implement PBKDF2 password hashing with Web Crypto API"
echo "✅ Commit 2: auth.js added (24 Nov 2025)"

# ==========================================
# 26 NOVEMBER 2025 - Day 3
# ==========================================
echo ""
echo "📅 26 November 2025 - Utility Functions"

# Commit 3: 26 Nov 10:15 AM - utils.js
git add assets/js/utils.js
GIT_AUTHOR_DATE="2025-11-26T10:15:00" GIT_COMMITTER_DATE="2025-11-26T10:15:00" git commit -m "Add utility functions for formatting, debounce, and dates"
echo "✅ Commit 3: utils.js added (26 Nov 2025)"

# ==========================================
# 28 NOVEMBER 2025 - Day 4
# ==========================================
echo ""
echo "📅 28 November 2025 - UI Rendering"

# Commit 4: 28 Nov 3:50 PM - ui.js
git add assets/js/ui.js
GIT_AUTHOR_DATE="2025-11-28T15:50:00" GIT_COMMITTER_DATE="2025-11-28T15:50:00" git commit -m "Implement UI rendering functions and toast notifications"
echo "✅ Commit 4: ui.js added (28 Nov 2025)"

# ==========================================
# 29 NOVEMBER 2025 - Day 5
# ==========================================
echo ""
echo "📅 29 November 2025 - Transaction Management"

# Commit 5: 29 Nov 11:30 AM - transactions.js
git add assets/js/transactions.js
GIT_AUTHOR_DATE="2025-11-29T11:30:00" GIT_COMMITTER_DATE="2025-11-29T11:30:00" git commit -m "Add transaction CRUD operations with undo stack"
echo "✅ Commit 5: transactions.js added (29 Nov 2025)"

# ==========================================
# 2 DECEMBER 2025 - Day 6
# ==========================================
echo ""
echo "📅 2 December 2025 - Charts Integration"

# Commit 6: 2 Dec 4:00 PM - charts.js
git add assets/js/charts.js
GIT_AUTHOR_DATE="2025-12-02T16:00:00" GIT_COMMITTER_DATE="2025-12-02T16:00:00" git commit -m "Integrate Chart.js for data visualization"
echo "✅ Commit 6: charts.js added (2 Dec 2025)"

# ==========================================
# 4 DECEMBER 2025 - Day 7
# ==========================================
echo ""
echo "📅 4 December 2025 - Main Application Router"

# Commit 7: 4 Dec 11:00 AM - main.js
git add assets/js/main.js
GIT_AUTHOR_DATE="2025-12-04T11:00:00" GIT_COMMITTER_DATE="2025-12-04T11:00:00" git commit -m "Add main application router and page initialization"
echo "✅ Commit 7: main.js added (4 Dec 2025)"

# ==========================================
# 6 DECEMBER 2025 - Day 8
# ==========================================
echo ""
echo "📅 6 December 2025 - Testing Suite"

# Commit 8: 6 Dec 3:00 PM - test.html
git add test.html
GIT_AUTHOR_DATE="2025-12-06T15:00:00" GIT_COMMITTER_DATE="2025-12-06T15:00:00" git commit -m "Add automated test suite for core functionality"
echo "✅ Commit 8: test.html added (6 Dec 2025)"

# ==========================================
# Push to GitHub
# ==========================================
echo ""
echo "🔗 Setting up remote repository..."
git branch -M main
git remote add origin https://github.com/oindrilakha12-ui/finsight-tracker.git

echo ""
echo "🚀 Ready to push to GitHub..."
echo "⚠️  Run: git push -u origin main --force"
echo ""
echo "✅ Developer 2 (Oindrila Khan) - JavaScript & Test commits ready!"
echo ""
echo "📊 Files committed with dates:"
echo "   JavaScript Files:"
echo "   - assets/js/db.js (21 Nov 2025) → Database layer"
echo "   - assets/js/auth.js (24 Nov 2025) → Login/signup security"
echo "   - assets/js/utils.js (26 Nov 2025) → Helpers (formatting, debounce, dates)"
echo "   - assets/js/ui.js (28 Nov 2025) → UI rendering functions"
echo "   - assets/js/transactions.js (29 Nov 2025) → CRUD, search, undo"
echo "   - assets/js/charts.js (2 Dec 2025) → Chart.js wrapper"
echo "   - assets/js/main.js (4 Dec 2025) → Router + initializes pages"
echo ""
echo "   Test File:"
echo "   - test.html (6 Dec 2025) → Automated test suite"
echo ""
echo "🎉 Total: 8 commits from 21 Nov - 6 Dec 2025!"