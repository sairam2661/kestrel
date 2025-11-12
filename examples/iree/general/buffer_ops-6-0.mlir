"builtin.module"() ({
  "vm.module"() <{sym_name = "buffer_ops"}> ({
    "vm.rodata"() <{sym_name = "rodata_3xi32", sym_visibility = "private", value = dense<[1, 2, 3]> : tensor<3xi32>}> : () -> ()
    "vm.rodata"() <{sym_name = "rodata_cmp_3xi32_a", sym_visibility = "private", value = dense<[100, 200, 300]> : tensor<3xi32>}> : () -> ()
    "vm.rodata"() <{sym_name = "rodata_cmp_3xi32_b", sym_visibility = "private", value = dense<[100, 201, 300]> : tensor<3xi32>}> : () -> ()
    "vm.export"() <{export_name = "test_compare", function_ref = @test_compare}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %288 = "vm.const.ref.rodata"() <{rodata = @rodata_cmp_3xi32_a}> : () -> !vm.buffer
      %289 = "vm.const.ref.rodata"() <{rodata = @rodata_cmp_3xi32_b}> : () -> !vm.buffer
      %290 = "util.optimization_barrier"(%288) : (!vm.buffer) -> !vm.buffer
      %291 = "util.optimization_barrier"(%289) : (!vm.buffer) -> !vm.buffer
      %292 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %293 = "vm.buffer.length"(%290) : (!vm.buffer) -> i64
      %294 = "vm.buffer.compare"(%290, %292, %290, %292, %293) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> i32
      "vm.check.nz"(%294) <{message = "buffer a == a"}> : (i32) -> ()
      %295 = "vm.buffer.compare"(%290, %292, %291, %292, %293) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> i32
      %296 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.check.eq"(%295, %296) <{message = "buffer a != b"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_compare"} : () -> ()
    "vm.export"() <{export_name = "test_compare_empty", function_ref = @test_compare_empty}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %281 = "vm.const.ref.rodata"() <{rodata = @rodata_cmp_3xi32_a}> : () -> !vm.buffer
      %282 = "vm.const.ref.rodata"() <{rodata = @rodata_cmp_3xi32_b}> : () -> !vm.buffer
      %283 = "util.optimization_barrier"(%281) : (!vm.buffer) -> !vm.buffer
      %284 = "util.optimization_barrier"(%282) : (!vm.buffer) -> !vm.buffer
      %285 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %286 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %287 = "vm.buffer.compare"(%283, %286, %283, %286, %285) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> i32
      "vm.check.nz"(%287) <{message = "empty buffer ranges are always equal"}> : (i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_compare_empty"} : () -> ()
    "vm.export"() <{export_name = "test_alloc", function_ref = @test_alloc}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %276 = "vm.const.i64"() <{value = 128 : i64}> : () -> i64
      %277 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %278 = "vm.buffer.alloc"(%276, %277) : (i64, i32) -> !vm.buffer
      %279 = "util.optimization_barrier"(%278) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%279) <{message = "!null"}> : (!vm.buffer) -> ()
      %280 = "vm.buffer.length"(%279) : (!vm.buffer) -> i64
      "vm.check.eq"(%276, %280) <{message = "buffer length == 128"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_alloc"} : () -> ()
    "vm.export"() <{export_name = "test_alloc_empty", function_ref = @test_alloc_empty}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %271 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %272 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %273 = "vm.buffer.alloc"(%271, %272) : (i64, i32) -> !vm.buffer
      %274 = "util.optimization_barrier"(%273) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%274) <{message = "!null"}> : (!vm.buffer) -> ()
      %275 = "vm.buffer.length"(%274) : (!vm.buffer) -> i64
      "vm.check.eq"(%271, %275) <{message = "buffer length == 0"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_alloc_empty"} : () -> ()
    "vm.export"() <{export_name = "test_clone", function_ref = @test_clone}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %263 = "vm.const.ref.rodata"() <{rodata = @rodata_3xi32}> : () -> !vm.buffer
      %264 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %265 = "vm.const.i64"() <{value = 8 : i64}> : () -> i64
      %266 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %267 = "vm.buffer.clone"(%263, %264, %265, %266) : (!vm.buffer, i64, i64, i32) -> !vm.buffer
      %268 = "util.optimization_barrier"(%267) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%268) <{message = "!null"}> : (!vm.buffer) -> ()
      %269 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %270 = "vm.buffer.compare"(%263, %264, %268, %269, %265) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> i32
      "vm.check.nz"(%270) <{message = "buffer subspans are equal"}> : (i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_clone"} : () -> ()
    "vm.export"() <{export_name = "test_clone_empty", function_ref = @test_clone_empty}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %255 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %256 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %257 = "vm.buffer.alloc"(%255, %256) : (i64, i32) -> !vm.buffer
      %258 = "util.optimization_barrier"(%257) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%258) <{message = "!null"}> : (!vm.buffer) -> ()
      %259 = "vm.buffer.length"(%258) : (!vm.buffer) -> i64
      "vm.check.eq"(%255, %259) <{message = "buffer length == 0"}> : (i64, i64) -> ()
      %260 = "vm.buffer.clone"(%258, %255, %255, %256) : (!vm.buffer, i64, i64, i32) -> !vm.buffer
      %261 = "util.optimization_barrier"(%260) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%261) <{message = "!null"}> : (!vm.buffer) -> ()
      %262 = "vm.buffer.length"(%261) : (!vm.buffer) -> i64
      "vm.check.eq"(%255, %262) <{message = "buffer length == 0"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_clone_empty"} : () -> ()
    "vm.export"() <{export_name = "fail_clone_out_of_range", function_ref = @fail_clone_out_of_range}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %250 = "vm.const.ref.rodata"() <{rodata = @rodata_3xi32}> : () -> !vm.buffer
      %251 = "util.optimization_barrier"(%250) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%251) <{message = "!null"}> : (!vm.buffer) -> ()
      %252 = "vm.const.i64"() <{value = 8 : i64}> : () -> i64
      %253 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %254 = "vm.buffer.clone"(%250, %252, %252, %253) : (!vm.buffer, i64, i64, i32) -> !vm.buffer
      "vm.return"() : () -> ()
    }) {sym_name = "fail_clone_out_of_range"} : () -> ()
    "vm.export"() <{export_name = "test_copy_full", function_ref = @test_copy_full}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %243 = "vm.const.ref.rodata"() <{rodata = @rodata_3xi32}> : () -> !vm.buffer
      %244 = "vm.buffer.length"(%243) : (!vm.buffer) -> i64
      "vm.check.nz"(%243) <{message = "!null"}> : (!vm.buffer) -> ()
      %245 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %246 = "vm.buffer.alloc"(%244, %245) : (i64, i32) -> !vm.buffer
      %247 = "util.optimization_barrier"(%246) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%247) <{message = "!null"}> : (!vm.buffer) -> ()
      %248 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      "vm.buffer.copy"(%243, %248, %247, %248, %244) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> ()
      %249 = "vm.buffer.compare"(%243, %248, %247, %248, %244) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> i32
      "vm.check.nz"(%249) <{message = "source and target match"}> : (i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_copy_full"} : () -> ()
    "vm.rodata"() <{sym_name = "test_copy_partial_ref", sym_visibility = "private", value = dense<2> : tensor<1xi32>}> : () -> ()
    "vm.export"() <{export_name = "test_copy_partial", function_ref = @test_copy_partial}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %235 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %236 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %237 = "vm.buffer.alloc"(%235, %236) : (i64, i32) -> !vm.buffer
      %238 = "util.optimization_barrier"(%237) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%238) <{message = "!null"}> : (!vm.buffer) -> ()
      %239 = "vm.const.ref.rodata"() <{rodata = @rodata_3xi32}> : () -> !vm.buffer
      %240 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      "vm.buffer.copy"(%239, %235, %238, %240, %235) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> ()
      %241 = "vm.const.ref.rodata"() <{rodata = @test_copy_partial_ref}> : () -> !vm.buffer
      %242 = "vm.buffer.compare"(%241, %240, %238, %240, %235) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> i32
      "vm.check.nz"(%242) <{message = "source and target match"}> : (i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_copy_partial"} : () -> ()
    "vm.export"() <{export_name = "fail_copy_out_of_range_source_offset", function_ref = @fail_copy_out_of_range_source_offset}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %229 = "vm.const.ref.rodata"() <{rodata = @rodata_3xi32}> : () -> !vm.buffer
      %230 = "vm.const.i64"() <{value = 128 : i64}> : () -> i64
      %231 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %232 = "vm.buffer.alloc"(%230, %231) : (i64, i32) -> !vm.buffer
      %233 = "util.optimization_barrier"(%232) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%233) <{message = "!null"}> : (!vm.buffer) -> ()
      %234 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      "vm.buffer.copy"(%229, %234, %233, %234, %230) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "fail_copy_out_of_range_source_offset"} : () -> ()
    "vm.export"() <{export_name = "fail_copy_out_of_range_source_length", function_ref = @fail_copy_out_of_range_source_length}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %222 = "vm.const.ref.rodata"() <{rodata = @rodata_3xi32}> : () -> !vm.buffer
      %223 = "vm.const.i64"() <{value = 128 : i64}> : () -> i64
      %224 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %225 = "vm.buffer.alloc"(%223, %224) : (i64, i32) -> !vm.buffer
      %226 = "util.optimization_barrier"(%225) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%226) <{message = "!null"}> : (!vm.buffer) -> ()
      %227 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %228 = "vm.const.i64"() <{value = 8 : i64}> : () -> i64
      "vm.buffer.copy"(%222, %228, %226, %227, %228) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "fail_copy_out_of_range_source_length"} : () -> ()
    "vm.export"() <{export_name = "fail_copy_out_of_range_target_offset", function_ref = @fail_copy_out_of_range_target_offset}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %215 = "vm.const.ref.rodata"() <{rodata = @rodata_3xi32}> : () -> !vm.buffer
      %216 = "vm.buffer.length"(%215) : (!vm.buffer) -> i64
      %217 = "vm.const.i64"() <{value = 8 : i64}> : () -> i64
      %218 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %219 = "vm.buffer.alloc"(%217, %218) : (i64, i32) -> !vm.buffer
      %220 = "util.optimization_barrier"(%219) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%220) <{message = "!null"}> : (!vm.buffer) -> ()
      %221 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      "vm.buffer.copy"(%215, %221, %220, %221, %216) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "fail_copy_out_of_range_target_offset"} : () -> ()
    "vm.export"() <{export_name = "fail_copy_out_of_range_target_length", function_ref = @fail_copy_out_of_range_target_length}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %209 = "vm.const.ref.rodata"() <{rodata = @rodata_3xi32}> : () -> !vm.buffer
      %210 = "vm.const.i64"() <{value = 8 : i64}> : () -> i64
      %211 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %212 = "vm.buffer.alloc"(%210, %211) : (i64, i32) -> !vm.buffer
      %213 = "util.optimization_barrier"(%212) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%213) <{message = "!null"}> : (!vm.buffer) -> ()
      %214 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      "vm.buffer.copy"(%209, %214, %213, %210, %210) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "fail_copy_out_of_range_target_length"} : () -> ()
    "vm.rodata"() <{sym_name = "test_fill_f32_ref", sym_visibility = "private", value = dense<[0.000000e+00, 4.200000e+01, 4.200000e+01, 0.000000e+00]> : tensor<4xf32>}> : () -> ()
    "vm.export"() <{export_name = "test_fill_f32", function_ref = @test_fill_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %197 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %198 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %199 = "vm.mul.i64"(%198, %197) : (i64, i64) -> i64
      %200 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %201 = "vm.buffer.alloc"(%199, %200) : (i64, i32) -> !vm.buffer
      %202 = "util.optimization_barrier"(%201) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%202) <{message = "!null"}> : (!vm.buffer) -> ()
      %203 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %204 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %205 = "vm.const.f32"() <{value = 4.200000e+01 : f32}> : () -> f32
      "vm.buffer.fill.f32"(%202, %203, %204, %205) : (!vm.buffer, i64, i64, f32) -> ()
      %206 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %207 = "vm.const.ref.rodata"() <{rodata = @test_fill_f32_ref}> : () -> !vm.buffer
      %208 = "vm.buffer.compare"(%207, %206, %202, %206, %199) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> i32
      "vm.check.nz"(%208) <{message = "buffer should match reference"}> : (i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_fill_f32"} : () -> ()
    "vm.rodata"() <{sym_name = "test_fill_i8_ref", sym_visibility = "private", value = dense<[0, 102, 102, 0]> : tensor<4xi8>}> : () -> ()
    "vm.export"() <{export_name = "test_fill_i8", function_ref = @test_fill_i8}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %185 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %186 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %187 = "vm.mul.i64"(%186, %185) : (i64, i64) -> i64
      %188 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %189 = "vm.buffer.alloc"(%187, %188) : (i64, i32) -> !vm.buffer
      %190 = "util.optimization_barrier"(%189) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%190) <{message = "!null"}> : (!vm.buffer) -> ()
      %191 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %192 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %193 = "vm.const.i32"() <{value = 102 : i32}> : () -> i32
      "vm.buffer.fill.i8"(%190, %191, %192, %193) : (!vm.buffer, i64, i64, i32) -> ()
      %194 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %195 = "vm.const.ref.rodata"() <{rodata = @test_fill_i8_ref}> : () -> !vm.buffer
      %196 = "vm.buffer.compare"(%195, %194, %190, %194, %187) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> i32
      "vm.check.nz"(%196) <{message = "buffer should match reference"}> : (i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_fill_i8"} : () -> ()
    "vm.rodata"() <{sym_name = "test_fill_i16_ref", sym_visibility = "private", value = dense<[0, -13570, -13570, 0]> : tensor<4xi16>}> : () -> ()
    "vm.export"() <{export_name = "test_fill_i16", function_ref = @test_fill_i16}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %173 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %174 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %175 = "vm.mul.i64"(%174, %173) : (i64, i64) -> i64
      %176 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %177 = "vm.buffer.alloc"(%175, %176) : (i64, i32) -> !vm.buffer
      %178 = "util.optimization_barrier"(%177) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%178) <{message = "!null"}> : (!vm.buffer) -> ()
      %179 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %180 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %181 = "vm.const.i32"() <{value = 51966 : i32}> : () -> i32
      "vm.buffer.fill.i16"(%178, %179, %180, %181) : (!vm.buffer, i64, i64, i32) -> ()
      %182 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %183 = "vm.const.ref.rodata"() <{rodata = @test_fill_i16_ref}> : () -> !vm.buffer
      %184 = "vm.buffer.compare"(%183, %182, %178, %182, %175) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> i32
      "vm.check.nz"(%184) <{message = "buffer should match reference"}> : (i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_fill_i16"} : () -> ()
    "vm.rodata"() <{sym_name = "test_fill_i32_ref", sym_visibility = "private", value = dense<[0, -65536, -65536, 0]> : tensor<4xi32>}> : () -> ()
    "vm.export"() <{export_name = "test_fill_i32", function_ref = @test_fill_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %161 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %162 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %163 = "vm.mul.i64"(%162, %161) : (i64, i64) -> i64
      %164 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %165 = "vm.buffer.alloc"(%163, %164) : (i64, i32) -> !vm.buffer
      %166 = "util.optimization_barrier"(%165) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%166) <{message = "!null"}> : (!vm.buffer) -> ()
      %167 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %168 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %169 = "vm.const.i32"() <{value = -65536 : i32}> : () -> i32
      "vm.buffer.fill.i32"(%166, %167, %168, %169) : (!vm.buffer, i64, i64, i32) -> ()
      %170 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %171 = "vm.const.ref.rodata"() <{rodata = @test_fill_i32_ref}> : () -> !vm.buffer
      %172 = "vm.buffer.compare"(%171, %170, %166, %170, %163) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> i32
      "vm.check.nz"(%172) <{message = "buffer should match reference"}> : (i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_fill_i32"} : () -> ()
    "vm.rodata"() <{sym_name = "test_fill_i64_ref", sym_visibility = "private", value = dense<[0, 4294967296, 4294967296, 0]> : tensor<4xi64>}> : () -> ()
    "vm.export"() <{export_name = "test_fill_i64", function_ref = @test_fill_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %149 = "vm.const.i64"() <{value = 8 : i64}> : () -> i64
      %150 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %151 = "vm.mul.i64"(%150, %149) : (i64, i64) -> i64
      %152 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %153 = "vm.buffer.alloc"(%151, %152) : (i64, i32) -> !vm.buffer
      %154 = "util.optimization_barrier"(%153) : (!vm.buffer) -> !vm.buffer
      "vm.check.nz"(%154) <{message = "!null"}> : (!vm.buffer) -> ()
      %155 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %156 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %157 = "vm.const.i64"() <{value = 4294967296 : i64}> : () -> i64
      "vm.buffer.fill.i64"(%154, %155, %156, %157) : (!vm.buffer, i64, i64, i64) -> ()
      %158 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %159 = "vm.const.ref.rodata"() <{rodata = @test_fill_i64_ref}> : () -> !vm.buffer
      %160 = "vm.buffer.compare"(%159, %158, %154, %158, %151) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> i32
      "vm.check.nz"(%160) <{message = "buffer should match reference"}> : (i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_fill_i64"} : () -> ()
    "vm.export"() <{export_name = "fail_fill_i16_rodata", function_ref = @fail_fill_i16_rodata}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %145 = "vm.const.ref.rodata"() <{rodata = @rodata_3xi32}> : () -> !vm.buffer
      %146 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %147 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %148 = "vm.const.i32"() <{value = 51966 : i32}> : () -> i32
      "vm.buffer.fill.i16"(%145, %146, %147, %148) : (!vm.buffer, i64, i64, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "fail_fill_i16_rodata"} : () -> ()
    "vm.rodata"() <{sym_name = "test_load_i8_data", sym_visibility = "private", value = dense<[0, 1, 127, 128, 255]> : tensor<5xui8>}> : () -> ()
    "vm.export"() <{export_name = "test_load_i8u", function_ref = @test_load_i8u}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %129 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %130 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %131 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %132 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      %133 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %134 = "vm.const.ref.rodata"() <{rodata = @test_load_i8_data}> : () -> !vm.buffer
      %135 = "vm.buffer.load.i8.u"(%134, %129) : (!vm.buffer, i64) -> i32
      %136 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.check.eq"(%135, %136) <{message = "0"}> : (i32, i32) -> ()
      %137 = "vm.buffer.load.i8.u"(%134, %130) : (!vm.buffer, i64) -> i32
      %138 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%137, %138) <{message = "1"}> : (i32, i32) -> ()
      %139 = "vm.buffer.load.i8.u"(%134, %131) : (!vm.buffer, i64) -> i32
      %140 = "vm.const.i32"() <{value = 127 : i32}> : () -> i32
      "vm.check.eq"(%139, %140) <{message = "0x7F"}> : (i32, i32) -> ()
      %141 = "vm.buffer.load.i8.u"(%134, %132) : (!vm.buffer, i64) -> i32
      %142 = "vm.const.i32"() <{value = 128 : i32}> : () -> i32
      "vm.check.eq"(%141, %142) <{message = "0x80"}> : (i32, i32) -> ()
      %143 = "vm.buffer.load.i8.u"(%134, %133) : (!vm.buffer, i64) -> i32
      %144 = "vm.const.i32"() <{value = 255 : i32}> : () -> i32
      "vm.check.eq"(%143, %144) <{message = "0xFF"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_load_i8u"} : () -> ()
    "vm.export"() <{export_name = "test_load_i8s", function_ref = @test_load_i8s}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %113 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %114 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %115 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %116 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      %117 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %118 = "vm.const.ref.rodata"() <{rodata = @test_load_i8_data}> : () -> !vm.buffer
      %119 = "vm.buffer.load.i8.s"(%118, %113) : (!vm.buffer, i64) -> i32
      %120 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.check.eq"(%119, %120) <{message = "0"}> : (i32, i32) -> ()
      %121 = "vm.buffer.load.i8.s"(%118, %114) : (!vm.buffer, i64) -> i32
      %122 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%121, %122) <{message = "1"}> : (i32, i32) -> ()
      %123 = "vm.buffer.load.i8.s"(%118, %115) : (!vm.buffer, i64) -> i32
      %124 = "vm.const.i32"() <{value = 127 : i32}> : () -> i32
      "vm.check.eq"(%123, %124) <{message = "0x7F"}> : (i32, i32) -> ()
      %125 = "vm.buffer.load.i8.s"(%118, %116) : (!vm.buffer, i64) -> i32
      %126 = "vm.const.i32"() <{value = -128 : i32}> : () -> i32
      "vm.check.eq"(%125, %126) <{message = "-128"}> : (i32, i32) -> ()
      %127 = "vm.buffer.load.i8.s"(%118, %117) : (!vm.buffer, i64) -> i32
      %128 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      "vm.check.eq"(%127, %128) <{message = "-1"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_load_i8s"} : () -> ()
    "vm.rodata"() <{sym_name = "test_load_i16_data", sym_visibility = "private", value = dense<[0, 1, 32767, 32768, 65535]> : tensor<5xui16>}> : () -> ()
    "vm.export"() <{export_name = "test_load_i16u", function_ref = @test_load_i16u}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %97 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %98 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %99 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %100 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      %101 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %102 = "vm.const.ref.rodata"() <{rodata = @test_load_i16_data}> : () -> !vm.buffer
      %103 = "vm.buffer.load.i16.u"(%102, %97) : (!vm.buffer, i64) -> i32
      %104 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.check.eq"(%103, %104) <{message = "0"}> : (i32, i32) -> ()
      %105 = "vm.buffer.load.i16.u"(%102, %98) : (!vm.buffer, i64) -> i32
      %106 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%105, %106) <{message = "1"}> : (i32, i32) -> ()
      %107 = "vm.buffer.load.i16.u"(%102, %99) : (!vm.buffer, i64) -> i32
      %108 = "vm.const.i32"() <{value = 32767 : i32}> : () -> i32
      "vm.check.eq"(%107, %108) <{message = "0x7FFF"}> : (i32, i32) -> ()
      %109 = "vm.buffer.load.i16.u"(%102, %100) : (!vm.buffer, i64) -> i32
      %110 = "vm.const.i32"() <{value = 32768 : i32}> : () -> i32
      "vm.check.eq"(%109, %110) <{message = "0x8000"}> : (i32, i32) -> ()
      %111 = "vm.buffer.load.i16.u"(%102, %101) : (!vm.buffer, i64) -> i32
      %112 = "vm.const.i32"() <{value = 65535 : i32}> : () -> i32
      "vm.check.eq"(%111, %112) <{message = "0xFFFF"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_load_i16u"} : () -> ()
    "vm.export"() <{export_name = "test_load_i16s", function_ref = @test_load_i16s}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %81 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %82 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %83 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %84 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      %85 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %86 = "vm.const.ref.rodata"() <{rodata = @test_load_i16_data}> : () -> !vm.buffer
      %87 = "vm.buffer.load.i16.s"(%86, %81) : (!vm.buffer, i64) -> i32
      %88 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.check.eq"(%87, %88) <{message = "0"}> : (i32, i32) -> ()
      %89 = "vm.buffer.load.i16.s"(%86, %82) : (!vm.buffer, i64) -> i32
      %90 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%89, %90) <{message = "1"}> : (i32, i32) -> ()
      %91 = "vm.buffer.load.i16.s"(%86, %83) : (!vm.buffer, i64) -> i32
      %92 = "vm.const.i32"() <{value = 32767 : i32}> : () -> i32
      "vm.check.eq"(%91, %92) <{message = "0x7FFF"}> : (i32, i32) -> ()
      %93 = "vm.buffer.load.i16.s"(%86, %84) : (!vm.buffer, i64) -> i32
      %94 = "vm.const.i32"() <{value = -32768 : i32}> : () -> i32
      "vm.check.eq"(%93, %94) <{message = "-32768"}> : (i32, i32) -> ()
      %95 = "vm.buffer.load.i16.s"(%86, %85) : (!vm.buffer, i64) -> i32
      %96 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      "vm.check.eq"(%95, %96) <{message = "-1"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_load_i16s"} : () -> ()
    "vm.rodata"() <{sym_name = "test_load_i32_data", sym_visibility = "private", value = dense<[0, 1, 2147483647, 2147483648, 4294967295]> : tensor<5xui32>}> : () -> ()
    "vm.export"() <{export_name = "test_load_i32", function_ref = @test_load_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %65 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %66 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %67 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %68 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      %69 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %70 = "vm.const.ref.rodata"() <{rodata = @test_load_i32_data}> : () -> !vm.buffer
      %71 = "vm.buffer.load.i32"(%70, %65) : (!vm.buffer, i64) -> i32
      %72 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.check.eq"(%71, %72) <{message = "0"}> : (i32, i32) -> ()
      %73 = "vm.buffer.load.i32"(%70, %66) : (!vm.buffer, i64) -> i32
      %74 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%73, %74) <{message = "1"}> : (i32, i32) -> ()
      %75 = "vm.buffer.load.i32"(%70, %67) : (!vm.buffer, i64) -> i32
      %76 = "vm.const.i32"() <{value = 2147483647 : i32}> : () -> i32
      "vm.check.eq"(%75, %76) <{message = "0x7FFFFFFF"}> : (i32, i32) -> ()
      %77 = "vm.buffer.load.i32"(%70, %68) : (!vm.buffer, i64) -> i32
      %78 = "vm.const.i32"() <{value = -2147483648 : i32}> : () -> i32
      "vm.check.eq"(%77, %78) <{message = "0x80000000"}> : (i32, i32) -> ()
      %79 = "vm.buffer.load.i32"(%70, %69) : (!vm.buffer, i64) -> i32
      %80 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      "vm.check.eq"(%79, %80) <{message = "0xFFFFFFFF"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_load_i32"} : () -> ()
    "vm.rodata"() <{sym_name = "test_store_i8_ref", sym_visibility = "private", value = dense<[0, 1, 127, 128, 255]> : tensor<5xui8>}> : () -> ()
    "vm.export"() <{export_name = "test_store_i8", function_ref = @test_store_i8}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %48 = "vm.const.ref.rodata"() <{rodata = @test_store_i8_ref}> : () -> !vm.buffer
      %49 = "util.optimization_barrier"(%48) : (!vm.buffer) -> !vm.buffer
      %50 = "vm.buffer.length"(%49) : (!vm.buffer) -> i64
      %51 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %52 = "vm.buffer.alloc"(%50, %51) : (i64, i32) -> !vm.buffer
      %53 = "util.optimization_barrier"(%52) : (!vm.buffer) -> !vm.buffer
      %54 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %55 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.buffer.store.i8"(%53, %54, %55) : (!vm.buffer, i64, i32) -> ()
      %56 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %57 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.buffer.store.i8"(%53, %56, %57) : (!vm.buffer, i64, i32) -> ()
      %58 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %59 = "vm.const.i32"() <{value = 127 : i32}> : () -> i32
      "vm.buffer.store.i8"(%53, %58, %59) : (!vm.buffer, i64, i32) -> ()
      %60 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      %61 = "vm.const.i32"() <{value = 128 : i32}> : () -> i32
      "vm.buffer.store.i8"(%53, %60, %61) : (!vm.buffer, i64, i32) -> ()
      %62 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %63 = "vm.const.i32"() <{value = 255 : i32}> : () -> i32
      "vm.buffer.store.i8"(%53, %62, %63) : (!vm.buffer, i64, i32) -> ()
      %64 = "vm.buffer.compare"(%49, %54, %53, %54, %50) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> i32
      "vm.check.nz"(%64) <{message = "source and target match"}> : (i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_store_i8"} : () -> ()
    "vm.rodata"() <{sym_name = "test_store_i16_ref", sym_visibility = "private", value = dense<[0, 1, 32767, 32768, 65535]> : tensor<5xui16>}> : () -> ()
    "vm.export"() <{export_name = "test_store_i16", function_ref = @test_store_i16}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %31 = "vm.const.ref.rodata"() <{rodata = @test_store_i16_ref}> : () -> !vm.buffer
      %32 = "util.optimization_barrier"(%31) : (!vm.buffer) -> !vm.buffer
      %33 = "vm.buffer.length"(%32) : (!vm.buffer) -> i64
      %34 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %35 = "vm.buffer.alloc"(%33, %34) : (i64, i32) -> !vm.buffer
      %36 = "util.optimization_barrier"(%35) : (!vm.buffer) -> !vm.buffer
      %37 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %38 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.buffer.store.i16"(%36, %37, %38) : (!vm.buffer, i64, i32) -> ()
      %39 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %40 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.buffer.store.i16"(%36, %39, %40) : (!vm.buffer, i64, i32) -> ()
      %41 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %42 = "vm.const.i32"() <{value = 32767 : i32}> : () -> i32
      "vm.buffer.store.i16"(%36, %41, %42) : (!vm.buffer, i64, i32) -> ()
      %43 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      %44 = "vm.const.i32"() <{value = 32768 : i32}> : () -> i32
      "vm.buffer.store.i16"(%36, %43, %44) : (!vm.buffer, i64, i32) -> ()
      %45 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %46 = "vm.const.i32"() <{value = 65535 : i32}> : () -> i32
      "vm.buffer.store.i16"(%36, %45, %46) : (!vm.buffer, i64, i32) -> ()
      %47 = "vm.buffer.compare"(%32, %37, %36, %37, %33) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> i32
      "vm.check.nz"(%47) <{message = "source and target match"}> : (i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_store_i16"} : () -> ()
    "vm.rodata"() <{sym_name = "test_store_i32_ref", sym_visibility = "private", value = dense<[0, 1, 2147483647, 2147483648, 4294967295]> : tensor<5xui32>}> : () -> ()
    "vm.export"() <{export_name = "test_store_i32", function_ref = @test_store_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %14 = "vm.const.ref.rodata"() <{rodata = @test_store_i32_ref}> : () -> !vm.buffer
      %15 = "util.optimization_barrier"(%14) : (!vm.buffer) -> !vm.buffer
      %16 = "vm.buffer.length"(%15) : (!vm.buffer) -> i64
      %17 = "vm.const.i32"() <{value = 16 : i32}> : () -> i32
      %18 = "vm.buffer.alloc"(%16, %17) : (i64, i32) -> !vm.buffer
      %19 = "util.optimization_barrier"(%18) : (!vm.buffer) -> !vm.buffer
      %20 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %21 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.buffer.store.i32"(%19, %20, %21) : (!vm.buffer, i64, i32) -> ()
      %22 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %23 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.buffer.store.i32"(%19, %22, %23) : (!vm.buffer, i64, i32) -> ()
      %24 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %25 = "vm.const.i32"() <{value = 2147483647 : i32}> : () -> i32
      "vm.buffer.store.i32"(%19, %24, %25) : (!vm.buffer, i64, i32) -> ()
      %26 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      %27 = "vm.const.i32"() <{value = -2147483648 : i32}> : () -> i32
      "vm.buffer.store.i32"(%19, %26, %27) : (!vm.buffer, i64, i32) -> ()
      %28 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %29 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      "vm.buffer.store.i32"(%19, %28, %29) : (!vm.buffer, i64, i32) -> ()
      %30 = "vm.buffer.compare"(%15, %20, %19, %20, %16) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> i32
      "vm.check.nz"(%30) <{message = "source and target match"}> : (i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_store_i32"} : () -> ()
    "vm.rodata"() <{sym_name = "test_hash_i8_data", sym_visibility = "private", value = dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]> : tensor<32xui8>}> : () -> ()
    "vm.export"() <{export_name = "test_hash", function_ref = @test_hash}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %1 = "vm.const.i64"() <{value = 5 : i64}> : () -> i64
      %2 = "vm.const.i64"() <{value = 16 : i64}> : () -> i64
      %3 = "vm.const.i64"() <{value = 25 : i64}> : () -> i64
      %4 = "vm.const.i64"() <{value = 32 : i64}> : () -> i64
      %5 = "vm.const.ref.rodata"() <{rodata = @test_hash_i8_data}> : () -> !vm.buffer
      %6 = "vm.buffer.hash"(%5, %0, %1) : (!vm.buffer, i64, i64) -> i64
      %7 = "vm.const.i64"() <{value = 1762690195596617357 : i64}> : () -> i64
      "vm.check.eq"(%6, %7) <{message = "0-4: 0x18765564cd99a68d"}> : (i64, i64) -> ()
      %8 = "vm.buffer.hash"(%5, %0, %2) : (!vm.buffer, i64, i64) -> i64
      %9 = "vm.const.i64"() <{value = 4551675220716592091 : i64}> : () -> i64
      "vm.check.eq"(%8, %9) <{message = "0-15: 0x3f2acc7f57c29bdb"}> : (i64, i64) -> ()
      %10 = "vm.buffer.hash"(%5, %0, %3) : (!vm.buffer, i64, i64) -> i64
      %11 = "vm.const.i64"() <{value = -4836423040314787606 : i64}> : () -> i64
      "vm.check.eq"(%10, %11) <{message = "0-24: 0xbce192de8a85b8ea"}> : (i64, i64) -> ()
      %12 = "vm.buffer.hash"(%5, %0, %4) : (!vm.buffer, i64, i64) -> i64
      %13 = "vm.const.i64"() <{value = 8153574914611379406 : i64}> : () -> i64
      "vm.check.eq"(%12, %13) <{message = "0-31: 0x7127512f72f27cce"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_hash"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

