# vps-benches

Just some benchmarks ran on a few VPS hosts for personal reference.  Raw script output can be found in the [logs](logs) directory.

Uses a script to print info and execute external benchmarks on Ubuntu systems.

## Usage

```bash
wget -qO- https://raw.githubusercontent.com/drklee3/vps-benches/master/bench.sh | bash | tee output.log
```

Piping external scripts to bash is not a good idea, but this is mainly used for temporary machines. Use at your own risk.

Bench scripts found via [haydenjames/bench-scripts](https://github.com/haydenjames/bench-scripts)


