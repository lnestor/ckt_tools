from bench import BenchFile

def synthesize(input_fnames, output_fname, input_pattern, ctx):
    """Add doc"""
    locked_fname, oracle_fname = input_fnames
    bench = BenchFile(locked_fname)
    primary_inputs = BenchFile(oracle_fname).inputs

    bench.remove_inputs(inputs=primary_inputs)

    bench.recursive_rm(ctx.key_block_output)
    bench.remove_gate(ctx.key_gate_output)
    bench.add_gate(ctx.key_gate_output, "buf", [ctx.original_signal_name])

    bench.apply_pattern(primary_inputs, input_pattern)
    bench.write(output_fname)
