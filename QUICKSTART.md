# FinSight Tracker - Quick Start Guide

## Get Started in 3 Steps

### Step 1: Run the Application

Choose one method:

**Option A: Python (Easiest)**
```bash
python -m http.server 8000
```

**Option B: Node.js**
```bash
npx http-server -p 8000
```

**Option C: PHP**
```bash
php -S localhost:8000
```

Then open: `http://localhost:8000`

### Step 2: Create Your Account

1. Click "Sign up" on the login page
2. Enter username: `demo` (or any username)
3. Enter password: `demo123` (minimum 6 characters)
4. Click "Sign Up"

### Step 3: Import Demo Data

1. After login, click **Settings** in the sidebar
2. Scroll to "Data Management"
3. Click "Import from JSON"
4. Select the `demo-data.json` file from the project folder
5. Wait for "Data imported successfully" message
6. Go to **Dashboard** to see your data visualized!

## What You'll See

After importing demo data:
- **Dashboard**: Charts showing 3 months of financial data
- **Transactions**: 22 sample transactions (income & expenses)
- **Budgets**: Pre-set budgets for 5 categories

## Try These Features

### Add a Transaction
1. Click **Add Transaction**
2. Select "Expense" or "Income"
3. Choose category (e.g., "food")
4. Enter amount: `500`
5. Click "Add Transaction"

### Search Transactions
1. Go to **Transactions**
2. Type in search box: `food`
3. See filtered results instantly (debounced!)

### Use Undo
1. Delete any transaction
2. Click the **Undo** button
3. Transaction is restored!

### Set a Budget
1. Go to **Budgets**
2. Enter amount for "food": `5000`
3. Click "Save Budgets"
4. See budget progress bar below

### Toggle Dark Mode
1. Go to **Settings**
2. Change Theme to "Dark"
3. Enjoy the dark theme!

### Change Currency
1. Go to **Settings**
2. Select currency: `USD`
3. Refresh page to see $ symbols

## Run Tests

Open `test.html` in your browser to run automated tests.

## Security Note

Your password is hashed using PBKDF2 with 100,000 iterations. It's never stored in plaintext!

## Data Storage

All data is stored locally in your browser's IndexedDB. No server required!

## Troubleshooting

**Problem**: "IndexedDB not supported"
- **Solution**: Use a modern browser (Chrome, Firefox, Safari, Edge)

**Problem**: Charts not showing
- **Solution**: Check internet connection (Chart.js loads from CDN)

**Problem**: Data disappeared
- **Solution**: Don't clear browser data. Use Export feature to backup!

**Problem**: Can't login after signup
- **Solution**: Make sure you're using the exact same username and password

## Mobile Usage

The app is responsive! Try it on your phone:
1. Run the server on your computer
2. Find your computer's IP address
3. Open `http://YOUR_IP:8000` on your phone
4. Tap the menu icon to open navigation

## For Students (Viva Questions)

**Q: How is password security implemented?**
A: Using Web Crypto API with PBKDF2, 100,000 iterations, SHA-256, random salt per user, and constant-time comparison.

**Q: What is debouncing and where is it used?**
A: Debouncing delays function execution until after a wait period. Used in search (300ms) to avoid excessive operations while typing.

**Q: How does the undo stack work?**
A: Stores last 10 actions (add/edit/delete) with old/new states. Undo reverses the most recent action by restoring previous state.

**Q: Why IndexedDB instead of localStorage?**
A: IndexedDB supports larger storage, complex queries, indexes, and transactions. localStorage is limited to 5-10MB and key-value pairs only.

**Q: How are charts updated reactively?**
A: After any transaction change, we recalculate aggregated data and call chart update methods with new data.

## Enjoy!

You now have a fully functional personal finance tracker running entirely in your browser!

---

**Need help?** Check the full README.md for detailed documentation.
