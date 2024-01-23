# bash-scripts

My collection of bash scripts for daily usage.

## Usage

#### fs/

Replace all the lines matching a string from the files of the folder. Remember to escape some characters not contemplated.
The current one string `"kubernetes.io/cluster/k8s"` would be contemplated as `"kubernetes.io\/cluster\/k8s"` by the `sed` command.

```bash
./replace-path-files-line.sh /projects/terraform "kubernetes.io/cluster/k8s"
```