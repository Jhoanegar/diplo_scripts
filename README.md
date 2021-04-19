## Assignment 3 Scripts

All scripts will return a help page if run without any parameters.

### Special variables in bash scripts

```bash
$ special_chars.sh <OPTION> [...ARGS]
```

The `OPTION` paramenter can be one of the following:
- `start`
- `at`
- `bang`
- `error`

The `at` and `bang` options can take more arguments.


### Create users

```bash
$ create_users.sh <INPUT>
```

The `INPUT` parameter must be a `csv` file such as the one included on this zip.

As a convenience a script `$ delete_users.sh <INPUT>` is included which will undo the actions performed by the `create_users` script.


### Find by extension

```bash
$ find_ext.sh <EXT>
``` 

The `EXT` parameter must be the extensions you are trying to find.

The output of this script is stored in a `results_<EXT>.txt` file.
