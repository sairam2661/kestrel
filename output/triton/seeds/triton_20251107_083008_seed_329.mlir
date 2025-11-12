"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "scratch_alloc_test"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32, alignment = 64 : i32, dataType = i32}> : () -> !ttg scratch
    .attribute "ttg.cache_hint" :  i32
    %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32, alignment = 128 : i32, dataType = f32}> : () -> !ttg scratch
    .attribute "ttg.cache_hint" :  i32
    %2 = "ttg.global_scratch_alloc"() <{size = 512 : i32, alignment = 32 : i32, dataType = i64}> : () -> !ttg scratch
    .attribute "ttg.cache_hint" :  i32
    %3 = "ttg.global_scratch_alloc"() <{size = 4096 : i32, alignment = 256 : i32, dataType = f64}> : () -> !ttg scratch
    .attribute "ttg.cache_hint" :  i32
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()