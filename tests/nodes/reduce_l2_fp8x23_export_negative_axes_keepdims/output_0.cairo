use array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::FP8x23Tensor;
use orion::numbers::FixedTrait;
use orion::numbers::FP8x23;

fn output_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(1);
    shape.append(3);
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 5, sign: false });
    data.append(FP8x23 { mag: 5, sign: false });
    data.append(FP8x23 { mag: 6, sign: false });
    data.append(FP8x23 { mag: 6, sign: false });
    data.append(FP8x23 { mag: 6, sign: false });
    data.append(FP8x23 { mag: 6, sign: false });
    data.append(FP8x23 { mag: 6, sign: false });
    data.append(FP8x23 { mag: 7, sign: false });
    data.append(FP8x23 { mag: 7, sign: false });
    TensorTrait::new(shape.span(), data.span())
}