from torchfm.dataset.criteo import CriteoDataset
dataset = CriteoDataset()

import json
import numpy as np
n_items = 4096
total_items = 500

input_data = []
for i in range(3):
    x = dataset[i][0]
    tiled_x = np.tile(x,n_items)
    tiled_x = tiled_x.reshape(n_items,-1)
    tiled_x[:,-1] = np.random.choice(range(total_items), n_items, replace=True)
    inp_x = tiled_x.flatten().tolist()
    input_data.append({'INPUT0__0':inp_x})

test_data = {'data':input_data}
out_file = 'data_'+str(n_items)+'.json'
with open(out_file, 'w') as f:
    json.dump(test_data, f)

