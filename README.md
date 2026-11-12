
# Gerpt

🛒 *Grocery ERP Tools*

CLI tools to take my personal Grocy workflow and make things easier/faster.

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
au voir   1
bye       2
hello     3
```
