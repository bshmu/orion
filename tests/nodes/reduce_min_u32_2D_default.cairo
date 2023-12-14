mod input_0;
mod output_0;


use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::U32Tensor;
use orion::utils::{assert_eq, assert_seq_eq};
use orion::operators::tensor::U32TensorPartialEq;
use core::array::{ArrayTrait, SpanTrait};

#[test]
#[available_gas(2000000000)]
fn test_reduce_min_u32_2D_default() {
    let input_0 = input_0::input_0();
    let z = output_0::output_0();

    let y = input_0.reduce_min(Option::None(()), Option::None(()), Option::None(()));

    assert_eq(y, z);
}
