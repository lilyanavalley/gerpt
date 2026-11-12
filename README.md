
# Gerpt

🛒 *Grocery ERP Tools*

CLI tools to take my personal Grocy workflow and make things easier/faster.

⚠️ This repo is an educational package for myself to learn and practice using Elixir. The code here isn't meant for real use outside of that... you *can*, but keep this in mind when using it, opening issues or PRs.

## Usage

For help:

```bash
gerpt
```

----

```bash
gerpt deduplicate <input>
```

Deduplicate stdin list of barcodes, separated by newlines, and counts each duplicate.
For example, a file full of:

```text
hello
hello
hello
bye
bye
au voir
```

will be output as:

```text
au revoir   1
bye       2
hello     3
```
