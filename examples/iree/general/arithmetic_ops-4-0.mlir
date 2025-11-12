"builtin.module"() ({
  "vm.module"() <{sym_name = "arithmetic_ops"}> ({
    "vm.export"() <{export_name = "test_add_i32", function_ref = @test_add_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %100 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %101 = "util.optimization_barrier"(%100) : (i32) -> i32
      %102 = "vm.add.i32"(%101, %101) : (i32, i32) -> i32
      %103 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      "vm.check.eq"(%102, %103) <{message = "1+1=2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_add_i32"} : () -> ()
    "vm.export"() <{export_name = "test_sub_i32", function_ref = @test_sub_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %94 = "vm.const.i32"() <{value = 3 : i32}> : () -> i32
      %95 = "util.optimization_barrier"(%94) : (i32) -> i32
      %96 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %97 = "util.optimization_barrier"(%96) : (i32) -> i32
      %98 = "vm.sub.i32"(%95, %97) : (i32, i32) -> i32
      %99 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%98, %99) <{message = "3-2=1"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_sub_i32"} : () -> ()
    "vm.export"() <{export_name = "test_mul_i32", function_ref = @test_mul_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %90 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %91 = "util.optimization_barrier"(%90) : (i32) -> i32
      %92 = "vm.mul.i32"(%91, %91) : (i32, i32) -> i32
      %93 = "vm.const.i32"() <{value = 4 : i32}> : () -> i32
      "vm.check.eq"(%92, %93) <{message = "2*2=4"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_mul_i32"} : () -> ()
    "vm.export"() <{export_name = "test_div_i32s", function_ref = @test_div_i32s}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %84 = "vm.const.i32"() <{value = 4 : i32}> : () -> i32
      %85 = "util.optimization_barrier"(%84) : (i32) -> i32
      %86 = "vm.const.i32"() <{value = -2 : i32}> : () -> i32
      %87 = "util.optimization_barrier"(%86) : (i32) -> i32
      %88 = "vm.div.i32.s"(%85, %87) : (i32, i32) -> i32
      %89 = "vm.const.i32"() <{value = -2 : i32}> : () -> i32
      "vm.check.eq"(%88, %89) <{message = "4/-2=-2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_div_i32s"} : () -> ()
    "vm.export"() <{export_name = "test_div_i32u", function_ref = @test_div_i32u}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %78 = "vm.const.i32"() <{value = 4 : i32}> : () -> i32
      %79 = "util.optimization_barrier"(%78) : (i32) -> i32
      %80 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %81 = "util.optimization_barrier"(%80) : (i32) -> i32
      %82 = "vm.div.i32.u"(%79, %81) : (i32, i32) -> i32
      %83 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      "vm.check.eq"(%82, %83) <{message = "4/2=2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_div_i32u"} : () -> ()
    "vm.export"() <{export_name = "test_rem_i32s", function_ref = @test_rem_i32s}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %72 = "vm.const.i32"() <{value = -3 : i32}> : () -> i32
      %73 = "util.optimization_barrier"(%72) : (i32) -> i32
      %74 = "vm.const.i32"() <{value = -2 : i32}> : () -> i32
      %75 = "util.optimization_barrier"(%74) : (i32) -> i32
      %76 = "vm.rem.i32.s"(%73, %75) : (i32, i32) -> i32
      %77 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      "vm.check.eq"(%76, %77) <{message = "-3%-2=-1"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_rem_i32s"} : () -> ()
    "vm.export"() <{export_name = "test_rem_i32u", function_ref = @test_rem_i32u}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %66 = "vm.const.i32"() <{value = 3 : i32}> : () -> i32
      %67 = "util.optimization_barrier"(%66) : (i32) -> i32
      %68 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %69 = "util.optimization_barrier"(%68) : (i32) -> i32
      %70 = "vm.rem.i32.u"(%67, %69) : (i32, i32) -> i32
      %71 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%70, %71) <{message = "3%2=1"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_rem_i32u"} : () -> ()
    "vm.export"() <{export_name = "test_fma_i32", function_ref = @test_fma_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %58 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %59 = "util.optimization_barrier"(%58) : (i32) -> i32
      %60 = "vm.const.i32"() <{value = 3 : i32}> : () -> i32
      %61 = "util.optimization_barrier"(%60) : (i32) -> i32
      %62 = "vm.const.i32"() <{value = 5 : i32}> : () -> i32
      %63 = "util.optimization_barrier"(%62) : (i32) -> i32
      %64 = "vm.fma.i32"(%59, %61, %63) : (i32, i32, i32) -> i32
      %65 = "vm.const.i32"() <{value = 11 : i32}> : () -> i32
      "vm.check.eq"(%64, %65) <{message = "2*3+5=11"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_fma_i32"} : () -> ()
    "vm.export"() <{export_name = "test_abs_i32", function_ref = @test_abs_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %54 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      %55 = "util.optimization_barrier"(%54) : (i32) -> i32
      %56 = "vm.abs.i32"(%55) : (i32) -> i32
      %57 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%56, %57) <{message = "abs(-1)=1"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_abs_i32"} : () -> ()
    "vm.export"() <{export_name = "test_min_i32s", function_ref = @test_min_i32s}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %49 = "vm.const.i32"() <{value = -3 : i32}> : () -> i32
      %50 = "util.optimization_barrier"(%49) : (i32) -> i32
      %51 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %52 = "util.optimization_barrier"(%51) : (i32) -> i32
      %53 = "vm.min.i32.s"(%50, %52) : (i32, i32) -> i32
      "vm.check.eq"(%53, %49) <{message = "smin(-3,2)=-3"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_min_i32s"} : () -> ()
    "vm.export"() <{export_name = "test_min_i32u", function_ref = @test_min_i32u}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %44 = "vm.const.i32"() <{value = -3 : i32}> : () -> i32
      %45 = "util.optimization_barrier"(%44) : (i32) -> i32
      %46 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %47 = "util.optimization_barrier"(%46) : (i32) -> i32
      %48 = "vm.min.i32.u"(%45, %47) : (i32, i32) -> i32
      "vm.check.eq"(%48, %46) <{message = "umin(-3,2)=2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_min_i32u"} : () -> ()
    "vm.export"() <{export_name = "test_max_i32s", function_ref = @test_max_i32s}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %39 = "vm.const.i32"() <{value = -3 : i32}> : () -> i32
      %40 = "util.optimization_barrier"(%39) : (i32) -> i32
      %41 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %42 = "util.optimization_barrier"(%41) : (i32) -> i32
      %43 = "vm.max.i32.s"(%40, %42) : (i32, i32) -> i32
      "vm.check.eq"(%43, %41) <{message = "smax(-3,2)=2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_max_i32s"} : () -> ()
    "vm.export"() <{export_name = "test_max_i32u", function_ref = @test_max_i32u}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %34 = "vm.const.i32"() <{value = -3 : i32}> : () -> i32
      %35 = "util.optimization_barrier"(%34) : (i32) -> i32
      %36 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %37 = "util.optimization_barrier"(%36) : (i32) -> i32
      %38 = "vm.max.i32.u"(%35, %37) : (i32, i32) -> i32
      "vm.check.eq"(%38, %34) <{message = "umax(-3,2)=-3"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_max_i32u"} : () -> ()
    "vm.export"() <{export_name = "test_not_i32", function_ref = @test_not_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %30 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %31 = "util.optimization_barrier"(%30) : (i32) -> i32
      %32 = "vm.not.i32"(%31) : (i32) -> i32
      %33 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      "vm.check.eq"(%32, %33) <{message = "~0=-1"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_not_i32"} : () -> ()
    "vm.export"() <{export_name = "test_and_i32", function_ref = @test_and_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %24 = "vm.const.i32"() <{value = 5 : i32}> : () -> i32
      %25 = "util.optimization_barrier"(%24) : (i32) -> i32
      %26 = "vm.const.i32"() <{value = 3 : i32}> : () -> i32
      %27 = "util.optimization_barrier"(%26) : (i32) -> i32
      %28 = "vm.and.i32"(%25, %27) : (i32, i32) -> i32
      %29 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%28, %29) <{message = "5&3=1"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_and_i32"} : () -> ()
    "vm.export"() <{export_name = "test_or_i32", function_ref = @test_or_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %18 = "vm.const.i32"() <{value = 5 : i32}> : () -> i32
      %19 = "util.optimization_barrier"(%18) : (i32) -> i32
      %20 = "vm.const.i32"() <{value = 3 : i32}> : () -> i32
      %21 = "util.optimization_barrier"(%20) : (i32) -> i32
      %22 = "vm.or.i32"(%19, %21) : (i32, i32) -> i32
      %23 = "vm.const.i32"() <{value = 7 : i32}> : () -> i32
      "vm.check.eq"(%22, %23) <{message = "5|3=7"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_or_i32"} : () -> ()
    "vm.export"() <{export_name = "test_xor_i32", function_ref = @test_xor_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %12 = "vm.const.i32"() <{value = 5 : i32}> : () -> i32
      %13 = "util.optimization_barrier"(%12) : (i32) -> i32
      %14 = "vm.const.i32"() <{value = 3 : i32}> : () -> i32
      %15 = "util.optimization_barrier"(%14) : (i32) -> i32
      %16 = "vm.xor.i32"(%13, %15) : (i32, i32) -> i32
      %17 = "vm.const.i32"() <{value = 6 : i32}> : () -> i32
      "vm.check.eq"(%16, %17) <{message = "5^3=6"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_xor_i32"} : () -> ()
    "vm.export"() <{export_name = "test_ctlz_i32_const_zero", function_ref = @test_ctlz_i32_const_zero}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %8 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %9 = "util.optimization_barrier"(%8) : (i32) -> i32
      %10 = "vm.ctlz.i32"(%9) : (i32) -> i32
      %11 = "vm.const.i32"() <{value = 32 : i32}> : () -> i32
      "vm.check.eq"(%10, %11) <{message = "ctlz(0)=32"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_ctlz_i32_const_zero"} : () -> ()
    "vm.export"() <{export_name = "test_ctlz_i32_const_1", function_ref = @test_ctlz_i32_const_1}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %4 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %5 = "util.optimization_barrier"(%4) : (i32) -> i32
      %6 = "vm.ctlz.i32"(%5) : (i32) -> i32
      %7 = "vm.const.i32"() <{value = 31 : i32}> : () -> i32
      "vm.check.eq"(%6, %7) <{message = "ctlz(1)=31"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_ctlz_i32_const_1"} : () -> ()
    "vm.export"() <{export_name = "test_ctlz_i32_const_ffffffff", function_ref = @test_ctlz_i32_const_ffffffff}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      %1 = "util.optimization_barrier"(%0) : (i32) -> i32
      %2 = "vm.ctlz.i32"(%1) : (i32) -> i32
      %3 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.check.eq"(%2, %3) <{message = "ctlz(0xFFFFFFFF)=0"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_ctlz_i32_const_ffffffff"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

