"builtin.module"() ({
  "vm.module"() <{sym_name = "arithmetic_ops_f64"}> ({
    "vm.export"() <{export_name = "test_add_f64", function_ref = @test_add_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %128 = "vm.const.f64"() <{value = 1.500000e+00 : f64}> : () -> f64
      %129 = "util.optimization_barrier"(%128) : (f64) -> f64
      %130 = "vm.add.f64"(%129, %129) : (f64, f64) -> f64
      %131 = "vm.const.f64"() <{value = 3.000000e+00 : f64}> : () -> f64
      "vm.check.eq"(%130, %131) <{message = "1.5+1.5=3"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_add_f64"} : () -> ()
    "vm.export"() <{export_name = "test_sub_f64", function_ref = @test_sub_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %122 = "vm.const.f64"() <{value = 3.000000e+00 : f64}> : () -> f64
      %123 = "util.optimization_barrier"(%122) : (f64) -> f64
      %124 = "vm.const.f64"() <{value = 2.500000e+00 : f64}> : () -> f64
      %125 = "util.optimization_barrier"(%124) : (f64) -> f64
      %126 = "vm.sub.f64"(%123, %125) : (f64, f64) -> f64
      %127 = "vm.const.f64"() <{value = 5.000000e-01 : f64}> : () -> f64
      "vm.check.eq"(%126, %127) <{message = "3.0-2.5=0.5"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_sub_f64"} : () -> ()
    "vm.export"() <{export_name = "test_mul_f64", function_ref = @test_mul_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %118 = "vm.const.f64"() <{value = 2.500000e+00 : f64}> : () -> f64
      %119 = "util.optimization_barrier"(%118) : (f64) -> f64
      %120 = "vm.mul.f64"(%119, %119) : (f64, f64) -> f64
      %121 = "vm.const.f64"() <{value = 6.250000e+00 : f64}> : () -> f64
      "vm.check.eq"(%120, %121) <{message = "2.5*2.5=6.25"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_mul_f64"} : () -> ()
    "vm.export"() <{export_name = "test_div_f64", function_ref = @test_div_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %112 = "vm.const.f64"() <{value = 4.000000e+00 : f64}> : () -> f64
      %113 = "util.optimization_barrier"(%112) : (f64) -> f64
      %114 = "vm.const.f64"() <{value = -2.000000e+00 : f64}> : () -> f64
      %115 = "util.optimization_barrier"(%114) : (f64) -> f64
      %116 = "vm.div.f64"(%113, %115) : (f64, f64) -> f64
      %117 = "vm.const.f64"() <{value = -2.000000e+00 : f64}> : () -> f64
      "vm.check.eq"(%116, %117) <{message = "4.0/-2.0=-2.0"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_div_f64"} : () -> ()
    "vm.export"() <{export_name = "test_rem_f64", function_ref = @test_rem_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %106 = "vm.const.f64"() <{value = -3.000000e+00 : f64}> : () -> f64
      %107 = "util.optimization_barrier"(%106) : (f64) -> f64
      %108 = "vm.const.f64"() <{value = -2.000000e+00 : f64}> : () -> f64
      %109 = "util.optimization_barrier"(%108) : (f64) -> f64
      %110 = "vm.rem.f64"(%107, %109) : (f64, f64) -> f64
      %111 = "vm.const.f64"() <{value = 1.000000e+00 : f64}> : () -> f64
      "vm.check.eq"(%110, %111) <{message = "-3.0%-2.0=1.0"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_rem_f64"} : () -> ()
    "vm.export"() <{export_name = "test_fma_f64", function_ref = @test_fma_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %98 = "vm.const.f64"() <{value = 2.000000e+00 : f64}> : () -> f64
      %99 = "util.optimization_barrier"(%98) : (f64) -> f64
      %100 = "vm.const.f64"() <{value = 3.000000e+00 : f64}> : () -> f64
      %101 = "util.optimization_barrier"(%100) : (f64) -> f64
      %102 = "vm.const.f64"() <{value = 5.000000e+00 : f64}> : () -> f64
      %103 = "util.optimization_barrier"(%102) : (f64) -> f64
      %104 = "vm.fma.f64"(%99, %101, %103) : (f64, f64, f64) -> f64
      %105 = "vm.const.f64"() <{value = 1.100000e+01 : f64}> : () -> f64
      "vm.check.eq"(%104, %105) <{message = "2.0*3.0+5.0=11.0"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_fma_f64"} : () -> ()
    "vm.export"() <{export_name = "test_abs_f64", function_ref = @test_abs_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %94 = "vm.const.f64"() <{value = -1.000000e+00 : f64}> : () -> f64
      %95 = "util.optimization_barrier"(%94) : (f64) -> f64
      %96 = "vm.abs.f64"(%95) : (f64) -> f64
      %97 = "vm.const.f64"() <{value = 1.000000e+00 : f64}> : () -> f64
      "vm.check.eq"(%96, %97) <{message = "abs(-1.0)=1.0"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_abs_f64"} : () -> ()
    "vm.export"() <{export_name = "test_neg_f64", function_ref = @test_neg_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %90 = "vm.const.f64"() <{value = -1.000000e+00 : f64}> : () -> f64
      %91 = "util.optimization_barrier"(%90) : (f64) -> f64
      %92 = "vm.neg.f64"(%91) : (f64) -> f64
      %93 = "vm.const.f64"() <{value = 1.000000e+00 : f64}> : () -> f64
      "vm.check.eq"(%92, %93) <{message = "neg(-1.0)=1.0"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_neg_f64"} : () -> ()
    "vm.export"() <{export_name = "test_ceil_f64", function_ref = @test_ceil_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %86 = "vm.const.f64"() <{value = 1.500000e+00 : f64}> : () -> f64
      %87 = "util.optimization_barrier"(%86) : (f64) -> f64
      %88 = "vm.ceil.f64"(%87) : (f64) -> f64
      %89 = "vm.const.f64"() <{value = 2.000000e+00 : f64}> : () -> f64
      "vm.check.eq"(%88, %89) <{message = "ceil(1.5)=2.0"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_ceil_f64"} : () -> ()
    "vm.export"() <{export_name = "test_floor_f64", function_ref = @test_floor_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %82 = "vm.const.f64"() <{value = 1.500000e+00 : f64}> : () -> f64
      %83 = "util.optimization_barrier"(%82) : (f64) -> f64
      %84 = "vm.floor.f64"(%83) : (f64) -> f64
      %85 = "vm.const.f64"() <{value = 1.000000e+00 : f64}> : () -> f64
      "vm.check.eq"(%84, %85) <{message = "floor(1.5)=1.0"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_floor_f64"} : () -> ()
    "vm.export"() <{export_name = "test_round_f64", function_ref = @test_round_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %78 = "vm.const.f64"() <{value = 1.500000e+00 : f64}> : () -> f64
      %79 = "util.optimization_barrier"(%78) : (f64) -> f64
      %80 = "vm.round.f64"(%79) : (f64) -> f64
      %81 = "vm.const.f64"() <{value = 2.000000e+00 : f64}> : () -> f64
      "vm.check.eq"(%80, %81) <{message = "round(1.5)=2.0"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_round_f64"} : () -> ()
    "vm.export"() <{export_name = "test_round_f64_even", function_ref = @test_round_f64_even}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %74 = "vm.const.f64"() <{value = 1.500000e+00 : f64}> : () -> f64
      %75 = "util.optimization_barrier"(%74) : (f64) -> f64
      %76 = "vm.round.f64.even"(%75) : (f64) -> f64
      %77 = "vm.const.f64"() <{value = 2.000000e+00 : f64}> : () -> f64
      "vm.check.eq"(%76, %77) <{message = "roundeven(1.5)=2.0"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_round_f64_even"} : () -> ()
    "vm.export"() <{export_name = "test_min_f64", function_ref = @test_min_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %69 = "vm.const.f64"() <{value = -3.000000e+00 : f64}> : () -> f64
      %70 = "util.optimization_barrier"(%69) : (f64) -> f64
      %71 = "vm.const.f64"() <{value = -2.000000e+00 : f64}> : () -> f64
      %72 = "util.optimization_barrier"(%71) : (f64) -> f64
      %73 = "vm.min.f64"(%70, %72) : (f64, f64) -> f64
      "vm.check.eq"(%73, %69) <{message = "min(-3.0,-2.0)=-3.0"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_min_f64"} : () -> ()
    "vm.export"() <{export_name = "test_max_f64", function_ref = @test_max_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %64 = "vm.const.f64"() <{value = -3.000000e+00 : f64}> : () -> f64
      %65 = "util.optimization_barrier"(%64) : (f64) -> f64
      %66 = "vm.const.f64"() <{value = -2.000000e+00 : f64}> : () -> f64
      %67 = "util.optimization_barrier"(%66) : (f64) -> f64
      %68 = "vm.max.f64"(%65, %67) : (f64, f64) -> f64
      "vm.check.eq"(%68, %66) <{message = "max(-3.0,-2.0)=-2.0"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_max_f64"} : () -> ()
    "vm.export"() <{export_name = "test_atan_f64", function_ref = @test_atan_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %60 = "vm.const.f64"() <{value = 1.000000e+00 : f64}> : () -> f64
      %61 = "util.optimization_barrier"(%60) : (f64) -> f64
      %62 = "vm.atan.f64"(%61) : (f64) -> f64
      %63 = "vm.const.f64"() <{value = 0.78539816339744828 : f64}> : () -> f64
      "vm.check.eq"(%62, %63) <{message = "atan(1.0)=0.7853981633974483"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_atan_f64"} : () -> ()
    "vm.export"() <{export_name = "test_atan2_f64", function_ref = @test_atan2_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %54 = "vm.const.f64"() <{value = 1.000000e+00 : f64}> : () -> f64
      %55 = "util.optimization_barrier"(%54) : (f64) -> f64
      %56 = "vm.const.f64"() <{value = 0.000000e+00 : f64}> : () -> f64
      %57 = "util.optimization_barrier"(%56) : (f64) -> f64
      %58 = "vm.atan2.f64"(%55, %57) : (f64, f64) -> f64
      %59 = "vm.const.f64"() <{value = 1.5707963267948966 : f64}> : () -> f64
      "vm.check.eq"(%58, %59) <{message = "atan2(1.0,0.0)=1.5707963267948966"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_atan2_f64"} : () -> ()
    "vm.export"() <{export_name = "test_cos_f64", function_ref = @test_cos_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %50 = "vm.const.f64"() <{value = 5.000000e-01 : f64}> : () -> f64
      %51 = "util.optimization_barrier"(%50) : (f64) -> f64
      %52 = "vm.cos.f64"(%51) : (f64) -> f64
      %53 = "vm.const.f64"() <{value = 0.87758256189037276 : f64}> : () -> f64
      "vm.check.eq"(%52, %53) <{message = "cos(0.5)=0.8775825618903728"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cos_f64"} : () -> ()
    "vm.export"() <{export_name = "test_sin_f64", function_ref = @test_sin_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %46 = "vm.const.f64"() <{value = 5.000000e-01 : f64}> : () -> f64
      %47 = "util.optimization_barrier"(%46) : (f64) -> f64
      %48 = "vm.sin.f64"(%47) : (f64) -> f64
      %49 = "vm.const.f64"() <{value = 0.47942553860420301 : f64}> : () -> f64
      "vm.check.eq"(%48, %49) <{message = "sin(0.5)=0.479425538604203"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_sin_f64"} : () -> ()
    "vm.export"() <{export_name = "test_exp_f64", function_ref = @test_exp_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %42 = "vm.const.f64"() <{value = 1.000000e+00 : f64}> : () -> f64
      %43 = "util.optimization_barrier"(%42) : (f64) -> f64
      %44 = "vm.exp.f64"(%43) : (f64) -> f64
      %45 = "vm.const.f64"() <{value = 2.7182818284590451 : f64}> : () -> f64
      "vm.check.eq"(%44, %45) <{message = "exp(1.0)=2.718281828459045"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_exp_f64"} : () -> ()
    "vm.export"() <{export_name = "test_exp2_f64", function_ref = @test_exp2_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %38 = "vm.const.f64"() <{value = 2.000000e+00 : f64}> : () -> f64
      %39 = "util.optimization_barrier"(%38) : (f64) -> f64
      %40 = "vm.exp2.f64"(%39) : (f64) -> f64
      %41 = "vm.const.f64"() <{value = 4.000000e+00 : f64}> : () -> f64
      "vm.check.eq"(%40, %41) <{message = "exp(2.0)=4.0"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_exp2_f64"} : () -> ()
    "vm.export"() <{export_name = "test_expm1_f64", function_ref = @test_expm1_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %34 = "vm.const.f64"() <{value = 2.000000e+00 : f64}> : () -> f64
      %35 = "util.optimization_barrier"(%34) : (f64) -> f64
      %36 = "vm.expm1.f64"(%35) : (f64) -> f64
      %37 = "vm.const.f64"() <{value = 6.3890560989306504 : f64}> : () -> f64
      "vm.check.eq"(%36, %37) <{message = "expm1(2.0)=6.38905609893065"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_expm1_f64"} : () -> ()
    "vm.export"() <{export_name = "test_log_f64", function_ref = @test_log_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %30 = "vm.const.f64"() <{value = 1.000000e+01 : f64}> : () -> f64
      %31 = "util.optimization_barrier"(%30) : (f64) -> f64
      %32 = "vm.log.f64"(%31) : (f64) -> f64
      %33 = "vm.const.f64"() <{value = 2.3025850929940459 : f64}> : () -> f64
      "vm.check.eq"(%32, %33) <{message = "log(10.0)=2.302585092994046"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_log_f64"} : () -> ()
    "vm.export"() <{export_name = "test_log10_f64", function_ref = @test_log10_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %26 = "vm.const.f64"() <{value = 1.000000e+01 : f64}> : () -> f64
      %27 = "util.optimization_barrier"(%26) : (f64) -> f64
      %28 = "vm.log10.f64"(%27) : (f64) -> f64
      %29 = "vm.const.f64"() <{value = 1.000000e+00 : f64}> : () -> f64
      "vm.check.eq"(%28, %29) <{message = "log10(10.0)=1.0"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_log10_f64"} : () -> ()
    "vm.export"() <{export_name = "test_log1p_f64", function_ref = @test_log1p_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %22 = "vm.const.f64"() <{value = 1.000000e+01 : f64}> : () -> f64
      %23 = "util.optimization_barrier"(%22) : (f64) -> f64
      %24 = "vm.log1p.f64"(%23) : (f64) -> f64
      %25 = "vm.const.f64"() <{value = 2.3978952727983707 : f64}> : () -> f64
      "vm.check.eq"(%24, %25) <{message = "log1p(10.0)=2.3978952727983707"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_log1p_f64"} : () -> ()
    "vm.export"() <{export_name = "test_log2_f64", function_ref = @test_log2_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %18 = "vm.const.f64"() <{value = 1.000000e+01 : f64}> : () -> f64
      %19 = "util.optimization_barrier"(%18) : (f64) -> f64
      %20 = "vm.log2.f64"(%19) : (f64) -> f64
      %21 = "vm.const.f64"() <{value = 3.3219280948873622 : f64}> : () -> f64
      "vm.check.eq"(%20, %21) <{message = "log2(10.0)=3.321928094887362"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_log2_f64"} : () -> ()
    "vm.export"() <{export_name = "test_pow_f64", function_ref = @test_pow_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %12 = "vm.const.f64"() <{value = 3.000000e+00 : f64}> : () -> f64
      %13 = "util.optimization_barrier"(%12) : (f64) -> f64
      %14 = "vm.const.f64"() <{value = 2.000000e+00 : f64}> : () -> f64
      %15 = "util.optimization_barrier"(%14) : (f64) -> f64
      %16 = "vm.pow.f64"(%13, %15) : (f64, f64) -> f64
      %17 = "vm.const.f64"() <{value = 9.000000e+00 : f64}> : () -> f64
      "vm.check.eq"(%16, %17) <{message = "pow(3.0,2.0)=9.0"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_pow_f64"} : () -> ()
    "vm.export"() <{export_name = "test_rsqrt_f64", function_ref = @test_rsqrt_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %8 = "vm.const.f64"() <{value = 4.000000e+00 : f64}> : () -> f64
      %9 = "util.optimization_barrier"(%8) : (f64) -> f64
      %10 = "vm.rsqrt.f64"(%9) : (f64) -> f64
      %11 = "vm.const.f64"() <{value = 5.000000e-01 : f64}> : () -> f64
      "vm.check.eq"(%10, %11) <{message = "rsqrt(4.0)=0.5"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_rsqrt_f64"} : () -> ()
    "vm.export"() <{export_name = "test_sqrt_f64", function_ref = @test_sqrt_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %4 = "vm.const.f64"() <{value = 4.000000e+00 : f64}> : () -> f64
      %5 = "util.optimization_barrier"(%4) : (f64) -> f64
      %6 = "vm.sqrt.f64"(%5) : (f64) -> f64
      %7 = "vm.const.f64"() <{value = 2.000000e+00 : f64}> : () -> f64
      "vm.check.eq"(%6, %7) <{message = "sqrt(4.0)=2.0"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_sqrt_f64"} : () -> ()
    "vm.export"() <{export_name = "test_tanh_f64", function_ref = @test_tanh_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.f64"() <{value = 5.000000e-01 : f64}> : () -> f64
      %1 = "util.optimization_barrier"(%0) : (f64) -> f64
      %2 = "vm.tanh.f64"(%1) : (f64) -> f64
      %3 = "vm.const.f64"() <{value = 0.46211715726000974 : f64}> : () -> f64
      "vm.check.eq"(%2, %3) <{message = "tanh(0.5)=0.46211715726000974"}> : (f64, f64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_tanh_f64"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

