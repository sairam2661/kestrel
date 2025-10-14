module {
  func.func @deep_tree(%arg0: i1, %arg1: i1, %arg2: i1, %arg3: i1, %arg4: f32, %arg5: f32) -> f32 {
    %0 = scf.if %arg0 -> (f32) {
      %1 = scf.if %arg1 -> (f32) {
        %2 = scf.if %arg2 -> (f32) {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg4 : f32
          } else {
            scf.yield %arg5 : f32
          }
          scf.yield %3 : f32
        } else {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg5 : f32
          } else {
            scf.yield %arg4 : f32
          }
          scf.yield %3 : f32
        }
        scf.yield %2 : f32
      } else {
        %2 = scf.if %arg2 -> (f32) {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg5 : f32
          } else {
            scf.yield %arg4 : f32
          }
          scf.yield %3 : f32
        } else {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg4 : f32
          } else {
            scf.yield %arg5 : f32
          }
          scf.yield %3 : f32
        }
        scf.yield %2 : f32
      }
      scf.yield %1 : f32
    } else {
      %1 = scf.if %arg1 -> (f32) {
        %2 = scf.if %arg2 -> (f32) {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg5 : f32
          } else {
            scf.yield %arg4 : f32
          }
          scf.yield %3 : f32
        } else {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg4 : f32
          } else {
            scf.yield %arg5 : f32
          }
          scf.yield %3 : f32
        }
        scf.yield %2 : f32
      } else {
        %2 = scf.if %arg2 -> (f32) {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg4 : f32
          } else {
            scf.yield %arg5 : f32
          }
          scf.yield %3 : f32
        } else {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg5 : f32
          } else {
            scf.yield %arg4 : f32
          }
          scf.yield %3 : f32
        }
        scf.yield %2 : f32
      }
      scf.yield %1 : f32
    }
    return %0 : f32
  }
  func.func @also_deep_tree(%arg0: i1, %arg1: i1, %arg2: i1, %arg3: i1, %arg4: f32, %arg5: f32) -> f32 {
    %0 = scf.if %arg0 -> (f32) {
      %1 = scf.if %arg1 -> (f32) {
        %2 = scf.if %arg2 -> (f32) {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg4 : f32
          } else {
            scf.yield %arg5 : f32
          }
          scf.yield %3 : f32
        } else {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg5 : f32
          } else {
            scf.yield %arg4 : f32
          }
          scf.yield %3 : f32
        }
        scf.yield %2 : f32
      } else {
        %2 = scf.if %arg2 -> (f32) {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg5 : f32
          } else {
            scf.yield %arg4 : f32
          }
          scf.yield %3 : f32
        } else {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg4 : f32
          } else {
            scf.yield %arg5 : f32
          }
          scf.yield %3 : f32
        }
        scf.yield %2 : f32
      }
      scf.yield %1 : f32
    } else {
      %1 = scf.if %arg1 -> (f32) {
        %2 = scf.if %arg2 -> (f32) {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg5 : f32
          } else {
            scf.yield %arg4 : f32
          }
          scf.yield %3 : f32
        } else {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg4 : f32
          } else {
            scf.yield %arg5 : f32
          }
          scf.yield %3 : f32
        }
        scf.yield %2 : f32
      } else {
        %2 = scf.if %arg2 -> (f32) {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg4 : f32
          } else {
            scf.yield %arg5 : f32
          }
          scf.yield %3 : f32
        } else {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg5 : f32
          } else {
            scf.yield %arg4 : f32
          }
          scf.yield %3 : f32
        }
        scf.yield %2 : f32
      }
      scf.yield %1 : f32
    }
    return %0 : f32
  }
  func.func @reverse_deep_tree(%arg0: i1, %arg1: i1, %arg2: i1, %arg3: i1, %arg4: f32, %arg5: f32) -> f32 {
    %0 = scf.if %arg0 -> (f32) {
      %1 = scf.if %arg1 -> (f32) {
        %2 = scf.if %arg2 -> (f32) {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg5 : f32
          } else {
            scf.yield %arg4 : f32
          }
          scf.yield %3 : f32
        } else {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg4 : f32
          } else {
            scf.yield %arg5 : f32
          }
          scf.yield %3 : f32
        }
        scf.yield %2 : f32
      } else {
        %2 = scf.if %arg2 -> (f32) {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg4 : f32
          } else {
            scf.yield %arg5 : f32
          }
          scf.yield %3 : f32
        } else {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg5 : f32
          } else {
            scf.yield %arg4 : f32
          }
          scf.yield %3 : f32
        }
        scf.yield %2 : f32
      }
      scf.yield %1 : f32
    } else {
      %1 = scf.if %arg1 -> (f32) {
        %2 = scf.if %arg2 -> (f32) {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg4 : f32
          } else {
            scf.yield %arg5 : f32
          }
          scf.yield %3 : f32
        } else {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg5 : f32
          } else {
            scf.yield %arg4 : f32
          }
          scf.yield %3 : f32
        }
        scf.yield %2 : f32
      } else {
        %2 = scf.if %arg2 -> (f32) {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg5 : f32
          } else {
            scf.yield %arg4 : f32
          }
          scf.yield %3 : f32
        } else {
          %3 = scf.if %arg3 -> (f32) {
            scf.yield %arg4 : f32
          } else {
            scf.yield %arg5 : f32
          }
          scf.yield %3 : f32
        }
        scf.yield %2 : f32
      }
      scf.yield %1 : f32
    }
    return %0 : f32
  }
  func.func @user(%arg0: i1, %arg1: i1, %arg2: i1, %arg3: i1, %arg4: f32, %arg5: f32) -> (f32, f32, f32) {
    %0 = call @deep_tree(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5) : (i1, i1, i1, i1, f32, f32) -> f32
    %1 = call @also_deep_tree(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5) : (i1, i1, i1, i1, f32, f32) -> f32
    %2 = call @reverse_deep_tree(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5) : (i1, i1, i1, i1, f32, f32) -> f32
    return %0, %1, %2 : f32, f32, f32
  }
}

