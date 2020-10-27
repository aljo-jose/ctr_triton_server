import torch
import numpy as np

class Model(torch.nn.Module):
    """
    """

    def __init__(self):
        super().__init__()
        pass

    """
    add two vecs and return sum
    """
    def forward(self, INPUT0, INPUT1):
        OUTPUT0__0 = INPUT0+INPUT1
        return OUTPUT0__0

# model = Model()
# input0_data = np.arange(start=0, stop=16, dtype=np.int32)
# input0_data = np.expand_dims(input0_data, axis=0)
# input1_data = np.full(shape=(1, 16), fill_value=-1, dtype=np.int32)
# result = model(input0_data, input1_data)
# print(result)
m = torch.jit.script(Model())
torch.jit.save(m, '/Users/aljo/projects/server/docs/examples/model_repository/pt_adder/1/model.pt')