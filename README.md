mint2db
=======

Import your mint.com transactions into a local SQLite database

How to use
----------

Quite simply, run:

```
docker run -e MINT_USERNAME=youremail -e MINT_PASSWORD=yourpass srid/mint2db | sqlite3 db.sqlite3
```

The file `db.sqlite3` will now have been created containing a
`transactions` table containing all of your Mint transactions.
