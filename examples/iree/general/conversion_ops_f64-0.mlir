"builtin.module"() ({
  "vm.module"() <{sym_name = "conversion_ops_f64"}> ({
    "vm.export"() <{export_name = "test_bitcast_i64_f64", function_ref = @test_bitcast_i64_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %32 = "vm.const.i64"() <{value = 4617878467915022336 : i64}> : () -> i64
      %33 = "util.optimization_barrier"(%32) : (i64) -> i64
      %34 = "vm.bitcast.i64.f64"(%33) : (i64) -> f64
      %35 = "vm.const.f64"() <{value = 5.500000e+00 : f64}> : () -> f64
      "vm.check.eq"(%34, %35) <{message = "bitcast i64 to f64"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_bitcast_i64_f64"} : () -> ()
    "vm.export"() <{export_name = "test_bitcast_f64_i64", function_ref = @test_bitcast_f64_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %28 = "vm.const.f64"() <{value = 5.500000e+00 : f64}> : () -> f64
      %29 = "util.optimization_barrier"(%28) : (f64) -> f64
      %30 = "vm.bitcast.f64.i64"(%29) : (f64) -> i64
      %31 = "vm.const.i64"() <{value = 4617878467915022336 : i64}> : () -> i64
      "vm.check.eq"(%30, %31) <{message = "bitcast f64 to i64"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_bitcast_f64_i64"} : () -> ()
    "vm.export"() <{export_name = "test_cast_si64_f64_int_max", function_ref = @test_cast_si64_f64_int_max}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %24 = "vm.const.i64"() <{value = 2147483647 : i64}> : () -> i64
      %25 = "util.optimization_barrier"(%24) : (i64) -> i64
      %26 = "vm.cast.si64.f64"(%25) : (i64) -> f64
      %27 = "vm.const.f64"() <{value = 0x41DFFFFFFFC00000 : f64}> : () -> f64
      "vm.check.eq"(%26, %27) <{message = "cast signed integer to a floating-point value"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_si64_f64_int_max"} : () -> ()
    "vm.export"() <{export_name = "test_cast_si64_f64_int_min", function_ref = @test_cast_si64_f64_int_min}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %20 = "vm.const.i64"() <{value = -2147483648 : i64}> : () -> i64
      %21 = "util.optimization_barrier"(%20) : (i64) -> i64
      %22 = "vm.cast.si64.f64"(%21) : (i64) -> f64
      %23 = "vm.const.f64"() <{value = 0xC1E0000000000000 : f64}> : () -> f64
      "vm.check.eq"(%22, %23) <{message = "cast signed integer to a floating-point value"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_si64_f64_int_min"} : () -> ()
    "vm.export"() <{export_name = "test_cast_ui64_f64_int_max", function_ref = @test_cast_ui64_f64_int_max}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %16 = "vm.const.i64"() <{value = 4294967295 : i64}> : () -> i64
      %17 = "util.optimization_barrier"(%16) : (i64) -> i64
      %18 = "vm.cast.ui64.f64"(%17) : (i64) -> f64
      %19 = "vm.const.f64"() <{value = 0x41EFFFFFFFE00000 : f64}> : () -> f64
      "vm.check.eq"(%18, %19) <{message = "cast unsigned integer to a floating-point value"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_ui64_f64_int_max"} : () -> ()
    "vm.export"() <{export_name = "test_cast_f64_si64_int_min", function_ref = @test_cast_f64_si64_int_min}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %12 = "vm.const.f64"() <{value = 0xC1E0000000000000 : f64}> : () -> f64
      %13 = "util.optimization_barrier"(%12) : (f64) -> f64
      %14 = "vm.cast.f64.si64"(%13) : (f64) -> i64
      %15 = "vm.const.i64"() <{value = -2147483648 : i64}> : () -> i64
      "vm.check.eq"(%14, %15) <{message = "cast floating-point value to a signed integer"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_f64_si64_int_min"} : () -> ()
    "vm.export"() <{export_name = "test_cast_f64_si64_away_from_zero_pos", function_ref = @test_cast_f64_si64_away_from_zero_pos}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %8 = "vm.const.f64"() <{value = 2.500000e+00 : f64}> : () -> f64
      %9 = "util.optimization_barrier"(%8) : (f64) -> f64
      %10 = "vm.cast.f64.si64"(%9) : (f64) -> i64
      %11 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      "vm.check.eq"(%10, %11) <{message = "cast floating-point value to a signed integer"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_f64_si64_away_from_zero_pos"} : () -> ()
    "vm.export"() <{export_name = "test_cast_f64_si64_away_from_zero_neg", function_ref = @test_cast_f64_si64_away_from_zero_neg}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %4 = "vm.const.f64"() <{value = -2.500000e+00 : f64}> : () -> f64
      %5 = "util.optimization_barrier"(%4) : (f64) -> f64
      %6 = "vm.cast.f64.si64"(%5) : (f64) -> i64
      %7 = "vm.const.i64"() <{value = -3 : i64}> : () -> i64
      "vm.check.eq"(%6, %7) <{message = "cast floating-point value to a signed integer"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_f64_si64_away_from_zero_neg"} : () -> ()
    "vm.export"() <{export_name = "test_cast_f64_ui64_away_from_zero", function_ref = @test_cast_f64_ui64_away_from_zero}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.f64"() <{value = 2.500000e+00 : f64}> : () -> f64
      %1 = "util.optimization_barrier"(%0) : (f64) -> f64
      %2 = "vm.cast.f64.ui64"(%1) : (f64) -> i64
      %3 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      "vm.check.eq"(%2, %3) <{message = "cast floating-point value to a signed integer"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_f64_ui64_away_from_zero"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

