"builtin.module"() ({
  "vm.module"() <{sym_name = "conversion_ops_f32"}> ({
    "vm.export"() <{export_name = "test_bitcast_i32_f32", function_ref = @test_bitcast_i32_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %67 = "vm.const.i32"() <{value = 1085276160 : i32}> : () -> i32
      %68 = "util.optimization_barrier"(%67) : (i32) -> i32
      %69 = "vm.bitcast.i32.f32"(%68) : (i32) -> f32
      %70 = "vm.const.f32"() <{value = 5.500000e+00 : f32}> : () -> f32
      "vm.check.eq"(%69, %70) <{message = "bitcast i32 to f32"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_bitcast_i32_f32"} : () -> ()
    "vm.export"() <{export_name = "test_bitcast_f32_i32", function_ref = @test_bitcast_f32_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %63 = "vm.const.f32"() <{value = 5.500000e+00 : f32}> : () -> f32
      %64 = "util.optimization_barrier"(%63) : (f32) -> f32
      %65 = "vm.bitcast.f32.i32"(%64) : (f32) -> i32
      %66 = "vm.const.i32"() <{value = 1085276160 : i32}> : () -> i32
      "vm.check.eq"(%65, %66) <{message = "bitcast f32 to i32"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_bitcast_f32_i32"} : () -> ()
    "vm.export"() <{export_name = "test_cast_si32_f32_int_max", function_ref = @test_cast_si32_f32_int_max}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %59 = "vm.const.i32"() <{value = 2147483647 : i32}> : () -> i32
      %60 = "util.optimization_barrier"(%59) : (i32) -> i32
      %61 = "vm.cast.si32.f32"(%60) : (i32) -> f32
      %62 = "vm.const.f32"() <{value = 2.14748365E+9 : f32}> : () -> f32
      "vm.check.eq"(%61, %62) <{message = "cast signed integer to a floating-point value"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_si32_f32_int_max"} : () -> ()
    "vm.export"() <{export_name = "test_cast_si32_f32_int_min", function_ref = @test_cast_si32_f32_int_min}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %55 = "vm.const.i32"() <{value = -2147483648 : i32}> : () -> i32
      %56 = "util.optimization_barrier"(%55) : (i32) -> i32
      %57 = "vm.cast.si32.f32"(%56) : (i32) -> f32
      %58 = "vm.const.f32"() <{value = -2.14748365E+9 : f32}> : () -> f32
      "vm.check.eq"(%57, %58) <{message = "cast signed integer to a floating-point value"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_si32_f32_int_min"} : () -> ()
    "vm.export"() <{export_name = "test_cast_ui32_f32_int_max", function_ref = @test_cast_ui32_f32_int_max}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %51 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      %52 = "util.optimization_barrier"(%51) : (i32) -> i32
      %53 = "vm.cast.ui32.f32"(%52) : (i32) -> f32
      %54 = "vm.const.f32"() <{value = 4.2949673E+9 : f32}> : () -> f32
      "vm.check.eq"(%53, %54) <{message = "cast unsigned integer to a floating-point value"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_ui32_f32_int_max"} : () -> ()
    "vm.export"() <{export_name = "test_cast_f32_si32_int_max", function_ref = @test_cast_f32_si32_int_max}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %47 = "vm.const.f32"() <{value = 2.14748352E+9 : f32}> : () -> f32
      %48 = "util.optimization_barrier"(%47) : (f32) -> f32
      %49 = "vm.cast.f32.si32"(%48) : (f32) -> i32
      %50 = "vm.const.i32"() <{value = 2147483520 : i32}> : () -> i32
      "vm.check.eq"(%49, %50) <{message = "cast floating-point value to a signed integer"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_f32_si32_int_max"} : () -> ()
    "vm.export"() <{export_name = "test_cast_f32_si32_int_min", function_ref = @test_cast_f32_si32_int_min}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %43 = "vm.const.f32"() <{value = -2.14748365E+9 : f32}> : () -> f32
      %44 = "util.optimization_barrier"(%43) : (f32) -> f32
      %45 = "vm.cast.f32.si32"(%44) : (f32) -> i32
      %46 = "vm.const.i32"() <{value = -2147483648 : i32}> : () -> i32
      "vm.check.eq"(%45, %46) <{message = "cast floating-point value to a signed integer"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_f32_si32_int_min"} : () -> ()
    "vm.export"() <{export_name = "test_cast_f32_si32_away_from_zero_pos", function_ref = @test_cast_f32_si32_away_from_zero_pos}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %39 = "vm.const.f32"() <{value = 2.500000e+00 : f32}> : () -> f32
      %40 = "util.optimization_barrier"(%39) : (f32) -> f32
      %41 = "vm.cast.f32.si32"(%40) : (f32) -> i32
      %42 = "vm.const.i32"() <{value = 3 : i32}> : () -> i32
      "vm.check.eq"(%41, %42) <{message = "cast floating-point value to a signed integer"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_f32_si32_away_from_zero_pos"} : () -> ()
    "vm.export"() <{export_name = "test_cast_f32_si32_away_from_zero_neg", function_ref = @test_cast_f32_si32_away_from_zero_neg}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %35 = "vm.const.f32"() <{value = -2.500000e+00 : f32}> : () -> f32
      %36 = "util.optimization_barrier"(%35) : (f32) -> f32
      %37 = "vm.cast.f32.si32"(%36) : (f32) -> i32
      %38 = "vm.const.i32"() <{value = -3 : i32}> : () -> i32
      "vm.check.eq"(%37, %38) <{message = "cast floating-point value to a signed integer"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_f32_si32_away_from_zero_neg"} : () -> ()
    "vm.export"() <{export_name = "test_cast_f32_si64_int_max", function_ref = @test_cast_f32_si64_int_max}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %31 = "vm.const.f32"() <{value = 9.22337149E+18 : f32}> : () -> f32
      %32 = "util.optimization_barrier"(%31) : (f32) -> f32
      %33 = "vm.cast.f32.si64"(%32) : (f32) -> i64
      %34 = "vm.const.i64"() <{value = 9223371487098961920 : i64}> : () -> i64
      "vm.check.eq"(%33, %34) <{message = "cast floating-point value to a signed integer"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_f32_si64_int_max"} : () -> ()
    "vm.export"() <{export_name = "test_cast_f32_si64_int_min", function_ref = @test_cast_f32_si64_int_min}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %24 = "vm.const.f32"() <{value = -9.22337203E+18 : f32}> : () -> f32
      %25 = "util.optimization_barrier"(%24) : (f32) -> f32
      %26 = "vm.cast.f32.si64"(%25) : (f32) -> i64
      %27 = "vm.const.i64"() <{value = -9223372036854775807 : i64}> : () -> i64
      %28 = "util.optimization_barrier"(%27) : (i64) -> i64
      %29 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %30 = "vm.sub.i64"(%28, %29) : (i64, i64) -> i64
      "vm.check.eq"(%26, %30) <{message = "cast floating-point value to a signed integer"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_f32_si64_int_min"} : () -> ()
    "vm.export"() <{export_name = "test_cast_f32_si64_away_from_zero_pos", function_ref = @test_cast_f32_si64_away_from_zero_pos}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %20 = "vm.const.f32"() <{value = 2.500000e+00 : f32}> : () -> f32
      %21 = "util.optimization_barrier"(%20) : (f32) -> f32
      %22 = "vm.cast.f32.si64"(%21) : (f32) -> i64
      %23 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      "vm.check.eq"(%22, %23) <{message = "cast floating-point value to a signed integer"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_f32_si64_away_from_zero_pos"} : () -> ()
    "vm.export"() <{export_name = "test_cast_f32_si64_away_from_zero_neg", function_ref = @test_cast_f32_si64_away_from_zero_neg}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %16 = "vm.const.f32"() <{value = -2.500000e+00 : f32}> : () -> f32
      %17 = "util.optimization_barrier"(%16) : (f32) -> f32
      %18 = "vm.cast.f32.si64"(%17) : (f32) -> i64
      %19 = "vm.const.i64"() <{value = -3 : i64}> : () -> i64
      "vm.check.eq"(%18, %19) <{message = "cast floating-point value to a signed integer"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_f32_si64_away_from_zero_neg"} : () -> ()
    "vm.export"() <{export_name = "test_cast_f32_ui32_int_big", function_ref = @test_cast_f32_ui32_int_big}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %12 = "vm.const.f32"() <{value = 4.29496704E+9 : f32}> : () -> f32
      %13 = "util.optimization_barrier"(%12) : (f32) -> f32
      %14 = "vm.cast.f32.ui32"(%13) : (f32) -> i32
      %15 = "vm.const.i32"() <{value = -256 : i32}> : () -> i32
      "vm.check.eq"(%14, %15) <{message = "cast floating-point value to an unsigned integer"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_f32_ui32_int_big"} : () -> ()
    "vm.export"() <{export_name = "test_cast_f32_ui32_away_from_zero", function_ref = @test_cast_f32_ui32_away_from_zero}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %8 = "vm.const.f32"() <{value = 2.500000e+00 : f32}> : () -> f32
      %9 = "util.optimization_barrier"(%8) : (f32) -> f32
      %10 = "vm.cast.f32.ui32"(%9) : (f32) -> i32
      %11 = "vm.const.i32"() <{value = 3 : i32}> : () -> i32
      "vm.check.eq"(%10, %11) <{message = "cast floating-point value to a signed integer"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_f32_ui32_away_from_zero"} : () -> ()
    "vm.export"() <{export_name = "test_cast_f32_ui64_int_big", function_ref = @test_cast_f32_ui64_int_big}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %4 = "vm.const.f32"() <{value = 1.8446743E+19 : f32}> : () -> f32
      %5 = "util.optimization_barrier"(%4) : (f32) -> f32
      %6 = "vm.cast.f32.ui64"(%5) : (f32) -> i64
      %7 = "vm.const.i64"() <{value = -1099511627776 : i64}> : () -> i64
      "vm.check.eq"(%6, %7) <{message = "cast floating-point value to an unsigned integer"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_f32_ui64_int_big"} : () -> ()
    "vm.export"() <{export_name = "test_cast_f32_ui64_away_from_zero", function_ref = @test_cast_f32_ui64_away_from_zero}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.f32"() <{value = 2.500000e+00 : f32}> : () -> f32
      %1 = "util.optimization_barrier"(%0) : (f32) -> f32
      %2 = "vm.cast.f32.ui64"(%1) : (f32) -> i64
      %3 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      "vm.check.eq"(%2, %3) <{message = "cast floating-point value to a signed integer"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cast_f32_ui64_away_from_zero"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

