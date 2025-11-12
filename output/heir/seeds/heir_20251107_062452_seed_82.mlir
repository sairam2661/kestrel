"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_classifier, i32) -> !secret_secret_classifier, sym_name = "classify_secret"}> ({
  ^bb0(%arg0: !secret_secret_classifier, %arg1: i32):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg2: !secret_secret_classifier):
      %1 = "secret.conceal"(%arg1) : (i32) -> !secret_secret_classifier
      %2 = "secret.conceal"(%arg1) : (i32) -> !secret_secret_classifier
      %3 = "secret.conceal"(%arg1) : (i32) -> !secret_secret_classifier
      %4 = "secret.conceal"(%arg1) : (i32) -> !secret_secret_classifier
      %5 = "secret.conceal"(%arg1) : (i32) -> !secret_secret_classifier
      %6 = "secret.conceal"(%arg1) : (i32) -> !secret_secret_classifier
      %7 = "secret.conceal"(%arg1) : (i32) -> !secret_secret_classifier
      %8 = "secret.conceal"(%arg1) : (i32) -> !secret_secret_classifier
      %9 = "secret.conceal"(%arg1) : (i32) -> !secret_secret_classifier
      %10 = "secret.conceal"(%arg1) : (i32) -> !secret_secret_classifier
      "secret.yield"(%10) : (!secret_secret_classifier) -> ()
    }) {__argattrs = [{dialect.attr = 1 : i64}]} : (!secret_secret_classifier) -> !secret_secret_classifier
    "func.return"(%0) : (!secret_secret_classifier) -> ()
  }) : () -> ()
}) : () -> ()