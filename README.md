# bash-scripts

My collection of bash scripts for daily usage.

## Usage

#### fs/

- replace-path-files-line.sh

Replace all the lines matching a string from the files of the folder. Remember to escape some characters not contemplated.
The current one string `"kubernetes.io/cluster/k8s"` would be contemplated as `"kubernetes.io\/cluster\/k8s"` by the `sed` command.

```bash
./replace-path-files-line.sh /projects/terraform "kubernetes.io/cluster/k8s"
```

- find-dir-filename-pattern.sh

Find all the files that match the provided name pattern over some directory.

```bash
./find-dir-filename-pattern.sh /path/to/search_directory "*.txt"
```

Move TF state resource for renamed module
```bash
./tf-multiple-state-mv.sh /tmp/tf_resources.txt ".main"
```