module {
  func.func @arm_sme_streaming_vl_half_words() -> index {
    %0 = arm_sme.streaming_vl <half>
    return %0 : index
  }
}

