# Copyright 2021 The TensorFlow Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================
"""This is a Python API fuzzer for tf.raw_ops.Add."""
import atheris
with atheris.instrument_imports():
  import sys
  from python_fuzzing import FuzzingHelper
  import tensorflow as tf


def TestOneInput(data):
  """Test numeric randomized fuzzing input for tf.raw_ops.Add."""
  fh = FuzzingHelper(data)

  # tf.raw_ops.Add also takes tf.bfloat16, tf.half, tf.float32, tf.float64,
  # tf.uint8, tf.int8, tf.int16, tf.int32, tf.int64, tf.complex64,
  # tf.complex128, but get_random_numeric_tensor only generates tf.float16,
  # tf.float32, tf.float64, tf.int32, tf.int64
  input_tensor_x = fh.get_random_numeric_tensor()
  input_tensor_y = fh.get_random_numeric_tensor()

  try:
    _ = tf.raw_ops.Add(x=input_tensor_x, y=input_tensor_y)
  except (tf.errors.InvalidArgumentError, tf.errors.UnimplementedError):
    pass


def main():
  atheris.Setup(sys.argv, TestOneInput, enable_python_coverage=True)
  atheris.Fuzz()


if __name__ == "__main__":
  main()
