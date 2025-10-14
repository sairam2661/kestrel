module {
  func.func @arm_sme_streaming_vl_double_words() -> index {
    %0 = arm_sme.streaming_vl <double>
    return %0 : index
  }
}

