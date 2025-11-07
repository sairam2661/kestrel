"builtin.module"() ({
  %0 = "hw.constant"() <{value = true}> : () -> i1
  %1 = "builtin.unrealized_conversion_cast"() : () -> !ltl.sequence
  %2 = "builtin.unrealized_conversion_cast"() : () -> !ltl.property
  %3 = "ltl.and"(%0, %0) : (i1, i1) -> i1
  %4 = "ltl.and"(%1, %1) : (!ltl.sequence, !ltl.sequence) -> !ltl.sequence
  %5 = "ltl.and"(%2, %2) : (!ltl.property, !ltl.property) -> !ltl.property
  %6 = "ltl.or"(%0, %0) : (i1, i1) -> i1
  %7 = "ltl.or"(%1, %1) : (!ltl.sequence, !ltl.sequence) -> !ltl.sequence
  %8 = "ltl.or"(%2, %2) : (!ltl.property, !ltl.property) -> !ltl.property
  %9 = "ltl.and"(%0, %0) : (i1, i1) -> i1
  %10 = "ltl.and"(%0, %1) : (i1, !ltl.sequence) -> !ltl.sequence
  %11 = "ltl.and"(%1, %0) : (!ltl.sequence, i1) -> !ltl.sequence
  %12 = "ltl.and"(%0, %2) : (i1, !ltl.property) -> !ltl.property
  %13 = "ltl.and"(%2, %0) : (!ltl.property, i1) -> !ltl.property
  %14 = "ltl.and"(%1, %2) : (!ltl.sequence, !ltl.property) -> !ltl.property
  %15 = "ltl.and"(%2, %1) : (!ltl.property, !ltl.sequence) -> !ltl.property
  %16 = "builtin.unrealized_conversion_cast"(%9) : (i1) -> index
  %17 = "builtin.unrealized_conversion_cast"(%10) : (!ltl.sequence) -> index
  %18 = "builtin.unrealized_conversion_cast"(%11) : (!ltl.sequence) -> index
  %19 = "builtin.unrealized_conversion_cast"(%12) : (!ltl.property) -> index
  %20 = "builtin.unrealized_conversion_cast"(%13) : (!ltl.property) -> index
  %21 = "builtin.unrealized_conversion_cast"(%14) : (!ltl.property) -> index
  %22 = "builtin.unrealized_conversion_cast"(%15) : (!ltl.property) -> index
  %23 = "ltl.delay"(%1) <{delay = 0 : i64}> : (!ltl.sequence) -> !ltl.sequence
  %24 = "ltl.delay"(%1) <{delay = 42 : i64, length = 1337 : i64}> : (!ltl.sequence) -> !ltl.sequence
  %25 = "ltl.concat"(%1) : (!ltl.sequence) -> !ltl.sequence
  %26 = "ltl.concat"(%1, %1) : (!ltl.sequence, !ltl.sequence) -> !ltl.sequence
  %27 = "ltl.concat"(%1, %1, %1) : (!ltl.sequence, !ltl.sequence, !ltl.sequence) -> !ltl.sequence
  %28 = "ltl.repeat"(%1) <{base = 0 : i64}> : (!ltl.sequence) -> !ltl.sequence
  %29 = "ltl.repeat"(%1) <{base = 42 : i64}> : (!ltl.sequence) -> !ltl.sequence
  %30 = "ltl.repeat"(%1) <{base = 42 : i64, more = 1337 : i64}> : (!ltl.sequence) -> !ltl.sequence
  %31 = "ltl.not"(%0) : (i1) -> !ltl.property
  %32 = "ltl.not"(%1) : (!ltl.sequence) -> !ltl.property
  %33 = "ltl.not"(%2) : (!ltl.property) -> !ltl.property
  %34 = "ltl.implication"(%1, %2) : (!ltl.sequence, !ltl.property) -> !ltl.property
  %35 = "ltl.until"(%2, %2) : (!ltl.property, !ltl.property) -> !ltl.property
  %36 = "ltl.eventually"(%0) : (i1) -> !ltl.property
  %37 = "ltl.eventually"(%1) : (!ltl.sequence) -> !ltl.property
  %38 = "ltl.eventually"(%2) : (!ltl.property) -> !ltl.property
  %39 = "ltl.clock"(%1, %0) <{edge = 0 : i32}> : (!ltl.sequence, i1) -> !ltl.sequence
  %40 = "ltl.clock"(%1, %0) <{edge = 1 : i32}> : (!ltl.sequence, i1) -> !ltl.sequence
  %41 = "ltl.clock"(%0, %0) <{edge = 2 : i32}> : (i1, i1) -> !ltl.sequence
  %42 = "ltl.clock"(%1, %0) <{edge = 2 : i32}> : (!ltl.sequence, i1) -> !ltl.sequence
  %43 = "ltl.clock"(%2, %0) <{edge = 2 : i32}> : (!ltl.property, i1) -> !ltl.property
  %44 = "builtin.unrealized_conversion_cast"(%41) : (!ltl.sequence) -> index
  %45 = "builtin.unrealized_conversion_cast"(%42) : (!ltl.sequence) -> index
  %46 = "builtin.unrealized_conversion_cast"(%43) : (!ltl.property) -> index
}) : () -> ()

