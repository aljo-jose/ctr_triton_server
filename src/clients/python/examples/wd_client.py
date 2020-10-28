
import argparse
import numpy as np
import sys
import gevent.ssl

import tritonclient.http as httpclient
from tritonclient.utils import InferenceServerException

server_url = 'localhost:8000'
triton_client = httpclient.InferenceServerClient(url=server_url, verbose=False)

def test_infer(model_name, input0_data, input1_data, headers=None):
    inputs = []
    outputs = []
    inputs.append(httpclient.InferInput('INPUT0__0', [1, 39], "INT32"))

    # Initialize the data
    inputs[0].set_data_from_numpy(input0_data, binary_data=False)
    inputs[1].set_data_from_numpy(input1_data, binary_data=True)

    outputs.append(httpclient.InferRequestedOutput('OUTPUT0__0', binary_data=True))
    # outputs.append(httpclient.InferRequestedOutput('OUTPUT1',
    #                                                binary_data=False))
    query_params = {'test_1': 1, 'test_2': 2}
    results = triton_client.infer(model_name,
                                  inputs,
                                  outputs=outputs,
                                  query_params=query_params,
                                  headers=headers)

    return results

if __name__ == '__main__':
    model_name = "wd"

    # Create the data for the two input tensors. Initialize the first
    # to unique integers and the second to all ones.
    input0_data = np.arange(start=0, stop=39, dtype=np.int32)
    input0_data = np.expand_dims(input0_data, axis=0)

    # Infer with requested Outputs
    results = test_infer(model_name, input0_dat, headers=None)
    print(results.get_response())

    # statistics = triton_client.get_inference_statistics(model_name=model_name,
    #                                                     headers=None)
    # print(statistics)
    output0_data = results.as_numpy('OUTPUT0__0')
    print(output0_data)
