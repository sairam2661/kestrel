"builtin.module"() ({
  "vm.module"() <{sym_name = "arithmetic_ops_f32"}> ({
    "vm.export"() <{export_name = "test_add_f32", function_ref = @test_add_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %128 = "vm.const.f32"() <{value = 1.500000e+00 : f32}> : () -> f32
      %129 = "util.optimization_barrier"(%128) : (f32) -> f32
      %130 = "vm.add.f32"(%129, %129) : (f32, f32) -> f32
      %131 = "vm.const.f32"() <{value = 3.000000e+00 : f32}> : () -> f32
      "vm.check.eq"(%130, %131) <{message = "1.5+1.5=3"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_add_f32"} : () -> ()
    "vm.export"() <{export_name = "test_sub_f32", function_ref = @test_sub_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %122 = "vm.const.f32"() <{value = 3.000000e+00 : f32}> : () -> f32
      %123 = "util.optimization_barrier"(%122) : (f32) -> f32
      %124 = "vm.const.f32"() <{value = 2.500000e+00 : f32}> : () -> f32
      %125 = "util.optimization_barrier"(%124) : (f32) -> f32
      %126 = "vm.sub.f32"(%123, %125) : (f32, f32) -> f32
      %127 = "vm.const.f32"() <{value = 5.000000e-01 : f32}> : () -> f32
      "vm.check.eq"(%126, %127) <{message = "3.0-2.5=0.5"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_sub_f32"} : () -> ()
    "vm.export"() <{export_name = "test_mul_f32", function_ref = @test_mul_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %118 = "vm.const.f32"() <{value = 2.500000e+00 : f32}> : () -> f32
      %119 = "util.optimization_barrier"(%118) : (f32) -> f32
      %120 = "vm.mul.f32"(%119, %119) : (f32, f32) -> f32
      %121 = "vm.const.f32"() <{value = 6.250000e+00 : f32}> : () -> f32
      "vm.check.eq"(%120, %121) <{message = "2.5*2.5=6.25"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_mul_f32"} : () -> ()
    "vm.export"() <{export_name = "test_div_f32", function_ref = @test_div_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %112 = "vm.const.f32"() <{value = 4.000000e+00 : f32}> : () -> f32
      %113 = "util.optimization_barrier"(%112) : (f32) -> f32
      %114 = "vm.const.f32"() <{value = -2.000000e+00 : f32}> : () -> f32
      %115 = "util.optimization_barrier"(%114) : (f32) -> f32
      %116 = "vm.div.f32"(%113, %115) : (f32, f32) -> f32
      %117 = "vm.const.f32"() <{value = -2.000000e+00 : f32}> : () -> f32
      "vm.check.eq"(%116, %117) <{message = "4.0/-2.0=-2.0"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_div_f32"} : () -> ()
    "vm.export"() <{export_name = "test_rem_f32", function_ref = @test_rem_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %106 = "vm.const.f32"() <{value = -3.000000e+00 : f32}> : () -> f32
      %107 = "util.optimization_barrier"(%106) : (f32) -> f32
      %108 = "vm.const.f32"() <{value = -2.000000e+00 : f32}> : () -> f32
      %109 = "util.optimization_barrier"(%108) : (f32) -> f32
      %110 = "vm.rem.f32"(%107, %109) : (f32, f32) -> f32
      %111 = "vm.const.f32"() <{value = 1.000000e+00 : f32}> : () -> f32
      "vm.check.eq"(%110, %111) <{message = "-3.0%-2.0=1.0"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_rem_f32"} : () -> ()
    "vm.export"() <{export_name = "test_fma_f32", function_ref = @test_fma_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %98 = "vm.const.f32"() <{value = 2.000000e+00 : f32}> : () -> f32
      %99 = "util.optimization_barrier"(%98) : (f32) -> f32
      %100 = "vm.const.f32"() <{value = 3.000000e+00 : f32}> : () -> f32
      %101 = "util.optimization_barrier"(%100) : (f32) -> f32
      %102 = "vm.const.f32"() <{value = 5.000000e+00 : f32}> : () -> f32
      %103 = "util.optimization_barrier"(%102) : (f32) -> f32
      %104 = "vm.fma.f32"(%99, %101, %103) : (f32, f32, f32) -> f32
      %105 = "vm.const.f32"() <{value = 1.100000e+01 : f32}> : () -> f32
      "vm.check.eq"(%104, %105) <{message = "2.0*3.0+5.0=11.0"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_fma_f32"} : () -> ()
    "vm.export"() <{export_name = "test_abs_f32", function_ref = @test_abs_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %94 = "vm.const.f32"() <{value = -1.000000e+00 : f32}> : () -> f32
      %95 = "util.optimization_barrier"(%94) : (f32) -> f32
      %96 = "vm.abs.f32"(%95) : (f32) -> f32
      %97 = "vm.const.f32"() <{value = 1.000000e+00 : f32}> : () -> f32
      "vm.check.eq"(%96, %97) <{message = "abs(-1.0)=1.0"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_abs_f32"} : () -> ()
    "vm.export"() <{export_name = "test_neg_f32", function_ref = @test_neg_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %90 = "vm.const.f32"() <{value = -1.000000e+00 : f32}> : () -> f32
      %91 = "util.optimization_barrier"(%90) : (f32) -> f32
      %92 = "vm.neg.f32"(%91) : (f32) -> f32
      %93 = "vm.const.f32"() <{value = 1.000000e+00 : f32}> : () -> f32
      "vm.check.eq"(%92, %93) <{message = "neg(-1.0)=1.0"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_neg_f32"} : () -> ()
    "vm.export"() <{export_name = "test_ceil_f32", function_ref = @test_ceil_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %86 = "vm.const.f32"() <{value = 1.500000e+00 : f32}> : () -> f32
      %87 = "util.optimization_barrier"(%86) : (f32) -> f32
      %88 = "vm.ceil.f32"(%87) : (f32) -> f32
      %89 = "vm.const.f32"() <{value = 2.000000e+00 : f32}> : () -> f32
      "vm.check.eq"(%88, %89) <{message = "ceil(1.5)=2.0"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_ceil_f32"} : () -> ()
    "vm.export"() <{export_name = "test_floor_f32", function_ref = @test_floor_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %82 = "vm.const.f32"() <{value = 1.500000e+00 : f32}> : () -> f32
      %83 = "util.optimization_barrier"(%82) : (f32) -> f32
      %84 = "vm.floor.f32"(%83) : (f32) -> f32
      %85 = "vm.const.f32"() <{value = 1.000000e+00 : f32}> : () -> f32
      "vm.check.eq"(%84, %85) <{message = "floor(1.5)=1.0"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_floor_f32"} : () -> ()
    "vm.export"() <{export_name = "test_round_f32", function_ref = @test_round_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %78 = "vm.const.f32"() <{value = 1.500000e+00 : f32}> : () -> f32
      %79 = "util.optimization_barrier"(%78) : (f32) -> f32
      %80 = "vm.round.f32"(%79) : (f32) -> f32
      %81 = "vm.const.f32"() <{value = 2.000000e+00 : f32}> : () -> f32
      "vm.check.eq"(%80, %81) <{message = "round(1.5)=2.0"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_round_f32"} : () -> ()
    "vm.export"() <{export_name = "test_round_f32_even", function_ref = @test_round_f32_even}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %74 = "vm.const.f32"() <{value = 1.500000e+00 : f32}> : () -> f32
      %75 = "util.optimization_barrier"(%74) : (f32) -> f32
      %76 = "vm.round.f32.even"(%75) : (f32) -> f32
      %77 = "vm.const.f32"() <{value = 2.000000e+00 : f32}> : () -> f32
      "vm.check.eq"(%76, %77) <{message = "roundeven(1.5)=2.0"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_round_f32_even"} : () -> ()
    "vm.export"() <{export_name = "test_min_f32", function_ref = @test_min_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %69 = "vm.const.f32"() <{value = -3.000000e+00 : f32}> : () -> f32
      %70 = "util.optimization_barrier"(%69) : (f32) -> f32
      %71 = "vm.const.f32"() <{value = -2.000000e+00 : f32}> : () -> f32
      %72 = "util.optimization_barrier"(%71) : (f32) -> f32
      %73 = "vm.min.f32"(%70, %72) : (f32, f32) -> f32
      "vm.check.eq"(%73, %69) <{message = "min(-3.0,-2.0)=-3.0"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_min_f32"} : () -> ()
    "vm.export"() <{export_name = "test_max_f32", function_ref = @test_max_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %64 = "vm.const.f32"() <{value = -3.000000e+00 : f32}> : () -> f32
      %65 = "util.optimization_barrier"(%64) : (f32) -> f32
      %66 = "vm.const.f32"() <{value = -2.000000e+00 : f32}> : () -> f32
      %67 = "util.optimization_barrier"(%66) : (f32) -> f32
      %68 = "vm.max.f32"(%65, %67) : (f32, f32) -> f32
      "vm.check.eq"(%68, %66) <{message = "max(-3.0,-2.0)=-2.0"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_max_f32"} : () -> ()
    "vm.export"() <{export_name = "test_atan_f32", function_ref = @test_atan_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %60 = "vm.const.f32"() <{value = 1.000000e+00 : f32}> : () -> f32
      %61 = "util.optimization_barrier"(%60) : (f32) -> f32
      %62 = "vm.atan.f32"(%61) : (f32) -> f32
      %63 = "vm.const.f32"() <{value = 0.785398185 : f32}> : () -> f32
      "vm.check.eq"(%62, %63) <{message = "atan(1.0)=0.7853981633974483"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_atan_f32"} : () -> ()
    "vm.export"() <{export_name = "test_atan2_f32", function_ref = @test_atan2_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %54 = "vm.const.f32"() <{value = 1.000000e+00 : f32}> : () -> f32
      %55 = "util.optimization_barrier"(%54) : (f32) -> f32
      %56 = "vm.const.f32"() <{value = 0.000000e+00 : f32}> : () -> f32
      %57 = "util.optimization_barrier"(%56) : (f32) -> f32
      %58 = "vm.atan2.f32"(%55, %57) : (f32, f32) -> f32
      %59 = "vm.const.f32"() <{value = 1.57079637 : f32}> : () -> f32
      "vm.check.eq"(%58, %59) <{message = "atan2(1.0,0.0)=1.5707963267948966"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_atan2_f32"} : () -> ()
    "vm.export"() <{export_name = "test_cos_f32", function_ref = @test_cos_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %50 = "vm.const.f32"() <{value = 5.000000e-01 : f32}> : () -> f32
      %51 = "util.optimization_barrier"(%50) : (f32) -> f32
      %52 = "vm.cos.f32"(%51) : (f32) -> f32
      %53 = "vm.const.f32"() <{value = 0.87758255 : f32}> : () -> f32
      "vm.check.eq"(%52, %53) <{message = "cos(0.5)=0.8775825618903728"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cos_f32"} : () -> ()
    "vm.export"() <{export_name = "test_sin_f32", function_ref = @test_sin_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %46 = "vm.const.f32"() <{value = 5.000000e-01 : f32}> : () -> f32
      %47 = "util.optimization_barrier"(%46) : (f32) -> f32
      %48 = "vm.sin.f32"(%47) : (f32) -> f32
      %49 = "vm.const.f32"() <{value = 0.47942555 : f32}> : () -> f32
      "vm.check.eq"(%48, %49) <{message = "sin(0.5)=0.479425538604203"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_sin_f32"} : () -> ()
    "vm.export"() <{export_name = "test_exp_f32", function_ref = @test_exp_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %42 = "vm.const.f32"() <{value = 1.000000e+00 : f32}> : () -> f32
      %43 = "util.optimization_barrier"(%42) : (f32) -> f32
      %44 = "vm.exp.f32"(%43) : (f32) -> f32
      %45 = "vm.const.f32"() <{value = 2.71828175 : f32}> : () -> f32
      "vm.check.eq"(%44, %45) <{message = "exp(1.0)=2.718281828459045"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_exp_f32"} : () -> ()
    "vm.export"() <{export_name = "test_exp2_f32", function_ref = @test_exp2_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %38 = "vm.const.f32"() <{value = 2.000000e+00 : f32}> : () -> f32
      %39 = "util.optimization_barrier"(%38) : (f32) -> f32
      %40 = "vm.exp2.f32"(%39) : (f32) -> f32
      %41 = "vm.const.f32"() <{value = 4.000000e+00 : f32}> : () -> f32
      "vm.check.eq"(%40, %41) <{message = "exp(2.0)=4.0"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_exp2_f32"} : () -> ()
    "vm.export"() <{export_name = "test_expm1_f32", function_ref = @test_expm1_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %34 = "vm.const.f32"() <{value = 2.000000e+00 : f32}> : () -> f32
      %35 = "util.optimization_barrier"(%34) : (f32) -> f32
      %36 = "vm.expm1.f32"(%35) : (f32) -> f32
      %37 = "vm.const.f32"() <{value = 6.3890562 : f32}> : () -> f32
      "vm.check.eq"(%36, %37) <{message = "expm1(2.0)=6.38905609893065"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_expm1_f32"} : () -> ()
    "vm.export"() <{export_name = "test_log_f32", function_ref = @test_log_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %30 = "vm.const.f32"() <{value = 1.000000e+01 : f32}> : () -> f32
      %31 = "util.optimization_barrier"(%30) : (f32) -> f32
      %32 = "vm.log.f32"(%31) : (f32) -> f32
      %33 = "vm.const.f32"() <{value = 2.30258512 : f32}> : () -> f32
      "vm.check.eq"(%32, %33) <{message = "log(10.0)=2.302585092994046"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_log_f32"} : () -> ()
    "vm.export"() <{export_name = "test_log10_f32", function_ref = @test_log10_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %26 = "vm.const.f32"() <{value = 1.000000e+01 : f32}> : () -> f32
      %27 = "util.optimization_barrier"(%26) : (f32) -> f32
      %28 = "vm.log10.f32"(%27) : (f32) -> f32
      %29 = "vm.const.f32"() <{value = 1.000000e+00 : f32}> : () -> f32
      "vm.check.eq"(%28, %29) <{message = "log10(10.0)=1.0"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_log10_f32"} : () -> ()
    "vm.export"() <{export_name = "test_log1p_f32", function_ref = @test_log1p_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %22 = "vm.const.f32"() <{value = 1.000000e+01 : f32}> : () -> f32
      %23 = "util.optimization_barrier"(%22) : (f32) -> f32
      %24 = "vm.log1p.f32"(%23) : (f32) -> f32
      %25 = "vm.const.f32"() <{value = 2.39789534 : f32}> : () -> f32
      "vm.check.eq"(%24, %25) <{message = "log1p(10.0)=2.3978952727983707"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_log1p_f32"} : () -> ()
    "vm.export"() <{export_name = "test_log2_f32", function_ref = @test_log2_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %18 = "vm.const.f32"() <{value = 1.000000e+01 : f32}> : () -> f32
      %19 = "util.optimization_barrier"(%18) : (f32) -> f32
      %20 = "vm.log2.f32"(%19) : (f32) -> f32
      %21 = "vm.const.f32"() <{value = 3.32192802 : f32}> : () -> f32
      "vm.check.eq"(%20, %21) <{message = "log2(10.0)=3.321928094887362"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_log2_f32"} : () -> ()
    "vm.export"() <{export_name = "test_pow_f32", function_ref = @test_pow_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %12 = "vm.const.f32"() <{value = 3.000000e+00 : f32}> : () -> f32
      %13 = "util.optimization_barrier"(%12) : (f32) -> f32
      %14 = "vm.const.f32"() <{value = 2.000000e+00 : f32}> : () -> f32
      %15 = "util.optimization_barrier"(%14) : (f32) -> f32
      %16 = "vm.pow.f32"(%13, %15) : (f32, f32) -> f32
      %17 = "vm.const.f32"() <{value = 9.000000e+00 : f32}> : () -> f32
      "vm.check.eq"(%16, %17) <{message = "pow(3.0,2.0)=9.0"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_pow_f32"} : () -> ()
    "vm.export"() <{export_name = "test_rsqrt_f32", function_ref = @test_rsqrt_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %8 = "vm.const.f32"() <{value = 4.000000e+00 : f32}> : () -> f32
      %9 = "util.optimization_barrier"(%8) : (f32) -> f32
      %10 = "vm.rsqrt.f32"(%9) : (f32) -> f32
      %11 = "vm.const.f32"() <{value = 5.000000e-01 : f32}> : () -> f32
      "vm.check.eq"(%10, %11) <{message = "rsqrt(4.0)=0.5"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_rsqrt_f32"} : () -> ()
    "vm.export"() <{export_name = "test_sqrt_f32", function_ref = @test_sqrt_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %4 = "vm.const.f32"() <{value = 4.000000e+00 : f32}> : () -> f32
      %5 = "util.optimization_barrier"(%4) : (f32) -> f32
      %6 = "vm.sqrt.f32"(%5) : (f32) -> f32
      %7 = "vm.const.f32"() <{value = 2.000000e+00 : f32}> : () -> f32
      "vm.check.eq"(%6, %7) <{message = "sqrt(4.0)=2.0"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_sqrt_f32"} : () -> ()
    "vm.export"() <{export_name = "test_tanh_f32", function_ref = @test_tanh_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.f32"() <{value = 5.000000e-01 : f32}> : () -> f32
      %1 = "util.optimization_barrier"(%0) : (f32) -> f32
      %2 = "vm.tanh.f32"(%1) : (f32) -> f32
      %3 = "vm.const.f32"() <{value = 0.462117165 : f32}> : () -> f32
      "vm.check.eq"(%2, %3) <{message = "tanh(0.5)=0.46211715726000974"}> : (f32, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_tanh_f32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

