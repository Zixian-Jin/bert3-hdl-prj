
// =====================================
//     Mase Hardware
//     Model: top
//     18/08/2024 23:18:40
// =====================================
`timescale 1ns/1ps
module top #(
    parameter df_split_DATA_IN_0_PRECISION_0 = 8,
    parameter df_split_DATA_IN_0_PRECISION_1 = 3,
    parameter df_split_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter df_split_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter df_split_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_DATA_OUT_0_PRECISION_0 = 8,
    parameter df_split_DATA_OUT_0_PRECISION_1 = 3,
    parameter df_split_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter df_split_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter df_split_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_DATA_OUT_1_PRECISION_0 = 8,
    parameter df_split_DATA_OUT_1_PRECISION_1 = 3,
    parameter df_split_DATA_OUT_1_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_DATA_OUT_1_PARALLELISM_DIM_0 = 4,
    parameter df_split_DATA_OUT_1_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_DATA_OUT_1_PARALLELISM_DIM_1 = 4,
    parameter df_split_DATA_OUT_1_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_DATA_OUT_1_PARALLELISM_DIM_2 = 1,
    parameter getitem_DATA_IN_0_PRECISION_0 = 8,
    parameter getitem_DATA_IN_0_PRECISION_1 = 3,
    parameter getitem_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter getitem_SELECT = 0,
    parameter getitem_DATA_OUT_0_PRECISION_0 = 8,
    parameter getitem_DATA_OUT_0_PRECISION_1 = 3,
    parameter getitem_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter getitem_1_DATA_IN_1_PRECISION_0 = 8,
    parameter getitem_1_DATA_IN_1_PRECISION_1 = 3,
    parameter getitem_1_DATA_IN_1_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_1_DATA_IN_1_PARALLELISM_DIM_0 = 4,
    parameter getitem_1_DATA_IN_1_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_1_DATA_IN_1_PARALLELISM_DIM_1 = 4,
    parameter getitem_1_DATA_IN_1_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_1_DATA_IN_1_PARALLELISM_DIM_2 = 1,
    parameter getitem_1_SELECT = 1,
    parameter getitem_1_DATA_OUT_0_PRECISION_0 = 8,
    parameter getitem_1_DATA_OUT_0_PRECISION_1 = 3,
    parameter getitem_1_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_1_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_1_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_1_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_1_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_1_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_0_attention_self_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_0_attention_self_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_0_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_attention_self_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_0_attention_self_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_0_attention_self_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_0_attention_self_OUTPUT_ATTENTIONS = 0,
    parameter encoder_layer_0_attention_self_QUERY_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_0_attention_self_QUERY_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_0_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_1 = 96,
    parameter encoder_layer_0_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_attention_self_QUERY_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_0_attention_self_QUERY_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_0_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_attention_self_QUERY_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_0_attention_self_QUERY_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_0_attention_self_KEY_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_0_attention_self_KEY_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_0_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_attention_self_KEY_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_1 = 96,
    parameter encoder_layer_0_attention_self_KEY_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_attention_self_KEY_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_0_attention_self_KEY_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_0_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_attention_self_KEY_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_0_attention_self_KEY_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_0_attention_self_VALUE_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_0_attention_self_VALUE_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_0_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_1 = 96,
    parameter encoder_layer_0_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_attention_self_VALUE_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_0_attention_self_VALUE_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_0_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_attention_self_VALUE_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_0_attention_self_VALUE_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_0_attention_self_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_0_attention_self_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_0_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_attention_self_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_0_attention_self_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_0_attention_self_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_0_attention_output_dense_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_0_attention_output_dense_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_0_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_0_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_0_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_0_attention_output_dense_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_0_attention_output_dense_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_0_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_attention_output_dense_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_1 = 96,
    parameter encoder_layer_0_attention_output_dense_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_attention_output_dense_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_0_attention_output_dense_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_0_attention_output_dense_BIAS_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_attention_output_dense_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_attention_output_dense_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_0_attention_output_dense_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_0_attention_output_dense_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_0_attention_output_dense_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_0_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_0_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_0_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter add_DATA_IN_0_PRECISION_0 = 8,
    parameter add_DATA_IN_0_PRECISION_1 = 3,
    parameter add_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter add_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter add_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter add_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter add_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter add_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter add_DATA_IN_1_PRECISION_0 = 8,
    parameter add_DATA_IN_1_PRECISION_1 = 3,
    parameter add_DATA_IN_1_TENSOR_SIZE_DIM_0 = 96,
    parameter add_DATA_IN_1_PARALLELISM_DIM_0 = 4,
    parameter add_DATA_IN_1_TENSOR_SIZE_DIM_1 = 4,
    parameter add_DATA_IN_1_PARALLELISM_DIM_1 = 4,
    parameter add_DATA_IN_1_TENSOR_SIZE_DIM_2 = 1,
    parameter add_DATA_IN_1_PARALLELISM_DIM_2 = 1,
    parameter add_DATA_OUT_0_PRECISION_0 = 8,
    parameter add_DATA_OUT_0_PRECISION_1 = 3,
    parameter add_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter add_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter add_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter add_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter add_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter add_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_0_attention_output_layer_norm_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_0_attention_output_layer_norm_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_0_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_0_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_0_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_1_DATA_IN_0_PRECISION_0 = 8,
    parameter df_split_1_DATA_IN_0_PRECISION_1 = 3,
    parameter df_split_1_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_1_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter df_split_1_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_1_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter df_split_1_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_1_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_1_DATA_OUT_0_PRECISION_0 = 8,
    parameter df_split_1_DATA_OUT_0_PRECISION_1 = 3,
    parameter df_split_1_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_1_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter df_split_1_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_1_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter df_split_1_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_1_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_1_DATA_OUT_1_PRECISION_0 = 8,
    parameter df_split_1_DATA_OUT_1_PRECISION_1 = 3,
    parameter df_split_1_DATA_OUT_1_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_1_DATA_OUT_1_PARALLELISM_DIM_0 = 4,
    parameter df_split_1_DATA_OUT_1_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_1_DATA_OUT_1_PARALLELISM_DIM_1 = 4,
    parameter df_split_1_DATA_OUT_1_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_1_DATA_OUT_1_PARALLELISM_DIM_2 = 1,
    parameter getitem_2_DATA_IN_0_PRECISION_0 = 8,
    parameter getitem_2_DATA_IN_0_PRECISION_1 = 3,
    parameter getitem_2_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_2_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_2_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_2_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_2_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_2_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter getitem_2_SELECT = 0,
    parameter getitem_2_DATA_OUT_0_PRECISION_0 = 8,
    parameter getitem_2_DATA_OUT_0_PRECISION_1 = 3,
    parameter getitem_2_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_2_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_2_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_2_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_2_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_2_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter getitem_3_DATA_IN_1_PRECISION_0 = 8,
    parameter getitem_3_DATA_IN_1_PRECISION_1 = 3,
    parameter getitem_3_DATA_IN_1_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_3_DATA_IN_1_PARALLELISM_DIM_0 = 4,
    parameter getitem_3_DATA_IN_1_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_3_DATA_IN_1_PARALLELISM_DIM_1 = 4,
    parameter getitem_3_DATA_IN_1_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_3_DATA_IN_1_PARALLELISM_DIM_2 = 1,
    parameter getitem_3_SELECT = 1,
    parameter getitem_3_DATA_OUT_0_PRECISION_0 = 8,
    parameter getitem_3_DATA_OUT_0_PRECISION_1 = 3,
    parameter getitem_3_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_3_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_3_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_3_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_3_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_3_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_0_intermediate_dense_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_0_intermediate_dense_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_0_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_0_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_0_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_0_intermediate_dense_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_0_intermediate_dense_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_0_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_intermediate_dense_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_1 = 384,
    parameter encoder_layer_0_intermediate_dense_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_intermediate_dense_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_0_intermediate_dense_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_0_intermediate_dense_BIAS_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_0_intermediate_dense_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_intermediate_dense_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_0_intermediate_dense_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_0_intermediate_dense_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_0_intermediate_dense_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_0_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_0_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_0_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_0_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_0_output_dense_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_0_output_dense_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_0_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_0_output_dense_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_0_output_dense_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_0_output_dense_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_0_output_dense_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_0_output_dense_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_0_output_dense_WEIGHT_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_0_output_dense_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_output_dense_WEIGHT_TENSOR_SIZE_DIM_1 = 96,
    parameter encoder_layer_0_output_dense_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_output_dense_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_0_output_dense_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_0_output_dense_BIAS_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_output_dense_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_output_dense_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_0_output_dense_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_0_output_dense_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_0_output_dense_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_0_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_output_dense_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_0_output_dense_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_0_output_dense_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter add_1_DATA_IN_0_PRECISION_0 = 8,
    parameter add_1_DATA_IN_0_PRECISION_1 = 3,
    parameter add_1_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter add_1_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter add_1_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter add_1_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter add_1_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter add_1_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter add_1_DATA_IN_1_PRECISION_0 = 8,
    parameter add_1_DATA_IN_1_PRECISION_1 = 3,
    parameter add_1_DATA_IN_1_TENSOR_SIZE_DIM_0 = 96,
    parameter add_1_DATA_IN_1_PARALLELISM_DIM_0 = 4,
    parameter add_1_DATA_IN_1_TENSOR_SIZE_DIM_1 = 4,
    parameter add_1_DATA_IN_1_PARALLELISM_DIM_1 = 4,
    parameter add_1_DATA_IN_1_TENSOR_SIZE_DIM_2 = 1,
    parameter add_1_DATA_IN_1_PARALLELISM_DIM_2 = 1,
    parameter add_1_DATA_OUT_0_PRECISION_0 = 8,
    parameter add_1_DATA_OUT_0_PRECISION_1 = 3,
    parameter add_1_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter add_1_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter add_1_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter add_1_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter add_1_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter add_1_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_0_output_layer_norm_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_0_output_layer_norm_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_0_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_0_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_0_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_0_output_layer_norm_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_0_output_layer_norm_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_0_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_0_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_0_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_0_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_0_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_0_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_2_DATA_IN_0_PRECISION_0 = 8,
    parameter df_split_2_DATA_IN_0_PRECISION_1 = 3,
    parameter df_split_2_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_2_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter df_split_2_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_2_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter df_split_2_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_2_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_2_DATA_OUT_0_PRECISION_0 = 8,
    parameter df_split_2_DATA_OUT_0_PRECISION_1 = 3,
    parameter df_split_2_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_2_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter df_split_2_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_2_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter df_split_2_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_2_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_2_DATA_OUT_1_PRECISION_0 = 8,
    parameter df_split_2_DATA_OUT_1_PRECISION_1 = 3,
    parameter df_split_2_DATA_OUT_1_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_2_DATA_OUT_1_PARALLELISM_DIM_0 = 4,
    parameter df_split_2_DATA_OUT_1_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_2_DATA_OUT_1_PARALLELISM_DIM_1 = 4,
    parameter df_split_2_DATA_OUT_1_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_2_DATA_OUT_1_PARALLELISM_DIM_2 = 1,
    parameter getitem_4_DATA_IN_0_PRECISION_0 = 8,
    parameter getitem_4_DATA_IN_0_PRECISION_1 = 3,
    parameter getitem_4_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_4_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_4_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_4_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_4_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_4_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter getitem_4_SELECT = 0,
    parameter getitem_4_DATA_OUT_0_PRECISION_0 = 8,
    parameter getitem_4_DATA_OUT_0_PRECISION_1 = 3,
    parameter getitem_4_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_4_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_4_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_4_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_4_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_4_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter getitem_5_DATA_IN_1_PRECISION_0 = 8,
    parameter getitem_5_DATA_IN_1_PRECISION_1 = 3,
    parameter getitem_5_DATA_IN_1_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_5_DATA_IN_1_PARALLELISM_DIM_0 = 4,
    parameter getitem_5_DATA_IN_1_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_5_DATA_IN_1_PARALLELISM_DIM_1 = 4,
    parameter getitem_5_DATA_IN_1_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_5_DATA_IN_1_PARALLELISM_DIM_2 = 1,
    parameter getitem_5_SELECT = 1,
    parameter getitem_5_DATA_OUT_0_PRECISION_0 = 8,
    parameter getitem_5_DATA_OUT_0_PRECISION_1 = 3,
    parameter getitem_5_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_5_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_5_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_5_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_5_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_5_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_1_attention_self_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_1_attention_self_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_1_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_attention_self_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_1_attention_self_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_1_attention_self_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_1_attention_self_OUTPUT_ATTENTIONS = 0,
    parameter encoder_layer_1_attention_self_QUERY_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_1_attention_self_QUERY_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_1_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_1 = 96,
    parameter encoder_layer_1_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_attention_self_QUERY_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_1_attention_self_QUERY_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_1_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_attention_self_QUERY_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_1_attention_self_QUERY_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_1_attention_self_KEY_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_1_attention_self_KEY_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_1_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_attention_self_KEY_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_1 = 96,
    parameter encoder_layer_1_attention_self_KEY_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_attention_self_KEY_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_1_attention_self_KEY_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_1_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_attention_self_KEY_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_1_attention_self_KEY_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_1_attention_self_VALUE_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_1_attention_self_VALUE_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_1_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_1 = 96,
    parameter encoder_layer_1_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_attention_self_VALUE_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_1_attention_self_VALUE_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_1_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_attention_self_VALUE_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_1_attention_self_VALUE_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_1_attention_self_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_1_attention_self_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_1_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_attention_self_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_1_attention_self_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_1_attention_self_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_1_attention_output_dense_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_1_attention_output_dense_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_1_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_1_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_1_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_1_attention_output_dense_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_1_attention_output_dense_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_1_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_attention_output_dense_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_1 = 96,
    parameter encoder_layer_1_attention_output_dense_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_attention_output_dense_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_1_attention_output_dense_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_1_attention_output_dense_BIAS_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_attention_output_dense_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_attention_output_dense_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_1_attention_output_dense_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_1_attention_output_dense_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_1_attention_output_dense_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_1_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_1_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_1_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter add_2_DATA_IN_0_PRECISION_0 = 8,
    parameter add_2_DATA_IN_0_PRECISION_1 = 3,
    parameter add_2_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter add_2_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter add_2_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter add_2_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter add_2_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter add_2_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter add_2_DATA_IN_1_PRECISION_0 = 8,
    parameter add_2_DATA_IN_1_PRECISION_1 = 3,
    parameter add_2_DATA_IN_1_TENSOR_SIZE_DIM_0 = 96,
    parameter add_2_DATA_IN_1_PARALLELISM_DIM_0 = 4,
    parameter add_2_DATA_IN_1_TENSOR_SIZE_DIM_1 = 4,
    parameter add_2_DATA_IN_1_PARALLELISM_DIM_1 = 4,
    parameter add_2_DATA_IN_1_TENSOR_SIZE_DIM_2 = 1,
    parameter add_2_DATA_IN_1_PARALLELISM_DIM_2 = 1,
    parameter add_2_DATA_OUT_0_PRECISION_0 = 8,
    parameter add_2_DATA_OUT_0_PRECISION_1 = 3,
    parameter add_2_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter add_2_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter add_2_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter add_2_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter add_2_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter add_2_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_1_attention_output_layer_norm_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_1_attention_output_layer_norm_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_1_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_1_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_1_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_3_DATA_IN_0_PRECISION_0 = 8,
    parameter df_split_3_DATA_IN_0_PRECISION_1 = 3,
    parameter df_split_3_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_3_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter df_split_3_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_3_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter df_split_3_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_3_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_3_DATA_OUT_0_PRECISION_0 = 8,
    parameter df_split_3_DATA_OUT_0_PRECISION_1 = 3,
    parameter df_split_3_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_3_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter df_split_3_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_3_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter df_split_3_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_3_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_3_DATA_OUT_1_PRECISION_0 = 8,
    parameter df_split_3_DATA_OUT_1_PRECISION_1 = 3,
    parameter df_split_3_DATA_OUT_1_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_3_DATA_OUT_1_PARALLELISM_DIM_0 = 4,
    parameter df_split_3_DATA_OUT_1_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_3_DATA_OUT_1_PARALLELISM_DIM_1 = 4,
    parameter df_split_3_DATA_OUT_1_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_3_DATA_OUT_1_PARALLELISM_DIM_2 = 1,
    parameter getitem_6_DATA_IN_0_PRECISION_0 = 8,
    parameter getitem_6_DATA_IN_0_PRECISION_1 = 3,
    parameter getitem_6_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_6_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_6_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_6_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_6_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_6_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter getitem_6_SELECT = 0,
    parameter getitem_6_DATA_OUT_0_PRECISION_0 = 8,
    parameter getitem_6_DATA_OUT_0_PRECISION_1 = 3,
    parameter getitem_6_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_6_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_6_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_6_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_6_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_6_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter getitem_7_DATA_IN_1_PRECISION_0 = 8,
    parameter getitem_7_DATA_IN_1_PRECISION_1 = 3,
    parameter getitem_7_DATA_IN_1_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_7_DATA_IN_1_PARALLELISM_DIM_0 = 4,
    parameter getitem_7_DATA_IN_1_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_7_DATA_IN_1_PARALLELISM_DIM_1 = 4,
    parameter getitem_7_DATA_IN_1_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_7_DATA_IN_1_PARALLELISM_DIM_2 = 1,
    parameter getitem_7_SELECT = 1,
    parameter getitem_7_DATA_OUT_0_PRECISION_0 = 8,
    parameter getitem_7_DATA_OUT_0_PRECISION_1 = 3,
    parameter getitem_7_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_7_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_7_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_7_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_7_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_7_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_1_intermediate_dense_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_1_intermediate_dense_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_1_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_1_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_1_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_1_intermediate_dense_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_1_intermediate_dense_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_1_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_intermediate_dense_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_1 = 384,
    parameter encoder_layer_1_intermediate_dense_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_intermediate_dense_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_1_intermediate_dense_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_1_intermediate_dense_BIAS_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_1_intermediate_dense_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_intermediate_dense_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_1_intermediate_dense_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_1_intermediate_dense_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_1_intermediate_dense_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_1_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_1_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_1_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_1_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_1_output_dense_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_1_output_dense_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_1_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_1_output_dense_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_1_output_dense_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_1_output_dense_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_1_output_dense_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_1_output_dense_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_1_output_dense_WEIGHT_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_1_output_dense_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_output_dense_WEIGHT_TENSOR_SIZE_DIM_1 = 96,
    parameter encoder_layer_1_output_dense_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_output_dense_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_1_output_dense_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_1_output_dense_BIAS_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_output_dense_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_output_dense_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_1_output_dense_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_1_output_dense_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_1_output_dense_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_1_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_output_dense_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_1_output_dense_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_1_output_dense_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter add_3_DATA_IN_0_PRECISION_0 = 8,
    parameter add_3_DATA_IN_0_PRECISION_1 = 3,
    parameter add_3_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter add_3_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter add_3_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter add_3_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter add_3_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter add_3_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter add_3_DATA_IN_1_PRECISION_0 = 8,
    parameter add_3_DATA_IN_1_PRECISION_1 = 3,
    parameter add_3_DATA_IN_1_TENSOR_SIZE_DIM_0 = 96,
    parameter add_3_DATA_IN_1_PARALLELISM_DIM_0 = 4,
    parameter add_3_DATA_IN_1_TENSOR_SIZE_DIM_1 = 4,
    parameter add_3_DATA_IN_1_PARALLELISM_DIM_1 = 4,
    parameter add_3_DATA_IN_1_TENSOR_SIZE_DIM_2 = 1,
    parameter add_3_DATA_IN_1_PARALLELISM_DIM_2 = 1,
    parameter add_3_DATA_OUT_0_PRECISION_0 = 8,
    parameter add_3_DATA_OUT_0_PRECISION_1 = 3,
    parameter add_3_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter add_3_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter add_3_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter add_3_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter add_3_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter add_3_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_1_output_layer_norm_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_1_output_layer_norm_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_1_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_1_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_1_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_1_output_layer_norm_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_1_output_layer_norm_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_1_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_1_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_1_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_1_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_1_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_1_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_4_DATA_IN_0_PRECISION_0 = 8,
    parameter df_split_4_DATA_IN_0_PRECISION_1 = 3,
    parameter df_split_4_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_4_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter df_split_4_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_4_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter df_split_4_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_4_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_4_DATA_OUT_0_PRECISION_0 = 8,
    parameter df_split_4_DATA_OUT_0_PRECISION_1 = 3,
    parameter df_split_4_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_4_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter df_split_4_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_4_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter df_split_4_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_4_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_4_DATA_OUT_1_PRECISION_0 = 8,
    parameter df_split_4_DATA_OUT_1_PRECISION_1 = 3,
    parameter df_split_4_DATA_OUT_1_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_4_DATA_OUT_1_PARALLELISM_DIM_0 = 4,
    parameter df_split_4_DATA_OUT_1_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_4_DATA_OUT_1_PARALLELISM_DIM_1 = 4,
    parameter df_split_4_DATA_OUT_1_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_4_DATA_OUT_1_PARALLELISM_DIM_2 = 1,
    parameter getitem_8_DATA_IN_0_PRECISION_0 = 8,
    parameter getitem_8_DATA_IN_0_PRECISION_1 = 3,
    parameter getitem_8_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_8_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_8_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_8_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_8_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_8_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter getitem_8_SELECT = 0,
    parameter getitem_8_DATA_OUT_0_PRECISION_0 = 8,
    parameter getitem_8_DATA_OUT_0_PRECISION_1 = 3,
    parameter getitem_8_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_8_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_8_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_8_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_8_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_8_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter getitem_9_DATA_IN_1_PRECISION_0 = 8,
    parameter getitem_9_DATA_IN_1_PRECISION_1 = 3,
    parameter getitem_9_DATA_IN_1_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_9_DATA_IN_1_PARALLELISM_DIM_0 = 4,
    parameter getitem_9_DATA_IN_1_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_9_DATA_IN_1_PARALLELISM_DIM_1 = 4,
    parameter getitem_9_DATA_IN_1_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_9_DATA_IN_1_PARALLELISM_DIM_2 = 1,
    parameter getitem_9_SELECT = 1,
    parameter getitem_9_DATA_OUT_0_PRECISION_0 = 8,
    parameter getitem_9_DATA_OUT_0_PRECISION_1 = 3,
    parameter getitem_9_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_9_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_9_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_9_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_9_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_9_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_2_attention_self_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_2_attention_self_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_2_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_attention_self_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_2_attention_self_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_2_attention_self_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_2_attention_self_OUTPUT_ATTENTIONS = 0,
    parameter encoder_layer_2_attention_self_QUERY_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_2_attention_self_QUERY_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_2_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_1 = 96,
    parameter encoder_layer_2_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_attention_self_QUERY_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_2_attention_self_QUERY_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_2_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_attention_self_QUERY_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_2_attention_self_QUERY_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_2_attention_self_KEY_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_2_attention_self_KEY_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_2_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_attention_self_KEY_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_1 = 96,
    parameter encoder_layer_2_attention_self_KEY_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_attention_self_KEY_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_2_attention_self_KEY_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_2_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_attention_self_KEY_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_2_attention_self_KEY_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_2_attention_self_VALUE_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_2_attention_self_VALUE_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_2_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_1 = 96,
    parameter encoder_layer_2_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_attention_self_VALUE_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_2_attention_self_VALUE_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_2_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_attention_self_VALUE_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_2_attention_self_VALUE_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_2_attention_self_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_2_attention_self_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_2_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_attention_self_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_2_attention_self_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_2_attention_self_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_2_attention_output_dense_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_2_attention_output_dense_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_2_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_2_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_2_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_2_attention_output_dense_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_2_attention_output_dense_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_2_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_attention_output_dense_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_1 = 96,
    parameter encoder_layer_2_attention_output_dense_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_attention_output_dense_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_2_attention_output_dense_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_2_attention_output_dense_BIAS_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_attention_output_dense_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_attention_output_dense_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_2_attention_output_dense_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_2_attention_output_dense_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_2_attention_output_dense_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_2_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_2_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_2_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter add_4_DATA_IN_0_PRECISION_0 = 8,
    parameter add_4_DATA_IN_0_PRECISION_1 = 3,
    parameter add_4_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter add_4_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter add_4_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter add_4_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter add_4_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter add_4_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter add_4_DATA_IN_1_PRECISION_0 = 8,
    parameter add_4_DATA_IN_1_PRECISION_1 = 3,
    parameter add_4_DATA_IN_1_TENSOR_SIZE_DIM_0 = 96,
    parameter add_4_DATA_IN_1_PARALLELISM_DIM_0 = 4,
    parameter add_4_DATA_IN_1_TENSOR_SIZE_DIM_1 = 4,
    parameter add_4_DATA_IN_1_PARALLELISM_DIM_1 = 4,
    parameter add_4_DATA_IN_1_TENSOR_SIZE_DIM_2 = 1,
    parameter add_4_DATA_IN_1_PARALLELISM_DIM_2 = 1,
    parameter add_4_DATA_OUT_0_PRECISION_0 = 8,
    parameter add_4_DATA_OUT_0_PRECISION_1 = 3,
    parameter add_4_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter add_4_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter add_4_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter add_4_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter add_4_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter add_4_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_2_attention_output_layer_norm_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_2_attention_output_layer_norm_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_2_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_2_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_2_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_5_DATA_IN_0_PRECISION_0 = 8,
    parameter df_split_5_DATA_IN_0_PRECISION_1 = 3,
    parameter df_split_5_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_5_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter df_split_5_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_5_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter df_split_5_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_5_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_5_DATA_OUT_0_PRECISION_0 = 8,
    parameter df_split_5_DATA_OUT_0_PRECISION_1 = 3,
    parameter df_split_5_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_5_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter df_split_5_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_5_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter df_split_5_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_5_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter df_split_5_DATA_OUT_1_PRECISION_0 = 8,
    parameter df_split_5_DATA_OUT_1_PRECISION_1 = 3,
    parameter df_split_5_DATA_OUT_1_TENSOR_SIZE_DIM_0 = 96,
    parameter df_split_5_DATA_OUT_1_PARALLELISM_DIM_0 = 4,
    parameter df_split_5_DATA_OUT_1_TENSOR_SIZE_DIM_1 = 4,
    parameter df_split_5_DATA_OUT_1_PARALLELISM_DIM_1 = 4,
    parameter df_split_5_DATA_OUT_1_TENSOR_SIZE_DIM_2 = 1,
    parameter df_split_5_DATA_OUT_1_PARALLELISM_DIM_2 = 1,
    parameter getitem_10_DATA_IN_0_PRECISION_0 = 8,
    parameter getitem_10_DATA_IN_0_PRECISION_1 = 3,
    parameter getitem_10_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_10_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_10_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_10_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_10_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_10_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter getitem_10_SELECT = 0,
    parameter getitem_10_DATA_OUT_0_PRECISION_0 = 8,
    parameter getitem_10_DATA_OUT_0_PRECISION_1 = 3,
    parameter getitem_10_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_10_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_10_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_10_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_10_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_10_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter getitem_11_DATA_IN_1_PRECISION_0 = 8,
    parameter getitem_11_DATA_IN_1_PRECISION_1 = 3,
    parameter getitem_11_DATA_IN_1_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_11_DATA_IN_1_PARALLELISM_DIM_0 = 4,
    parameter getitem_11_DATA_IN_1_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_11_DATA_IN_1_PARALLELISM_DIM_1 = 4,
    parameter getitem_11_DATA_IN_1_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_11_DATA_IN_1_PARALLELISM_DIM_2 = 1,
    parameter getitem_11_SELECT = 1,
    parameter getitem_11_DATA_OUT_0_PRECISION_0 = 8,
    parameter getitem_11_DATA_OUT_0_PRECISION_1 = 3,
    parameter getitem_11_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter getitem_11_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter getitem_11_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter getitem_11_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter getitem_11_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter getitem_11_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_2_intermediate_dense_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_2_intermediate_dense_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_2_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_2_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_2_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_2_intermediate_dense_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_2_intermediate_dense_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_2_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_intermediate_dense_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_1 = 384,
    parameter encoder_layer_2_intermediate_dense_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_intermediate_dense_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_2_intermediate_dense_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_2_intermediate_dense_BIAS_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_2_intermediate_dense_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_intermediate_dense_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_2_intermediate_dense_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_2_intermediate_dense_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_2_intermediate_dense_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_2_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_2_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_2_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_2_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_2_output_dense_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_2_output_dense_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_2_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_2_output_dense_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_2_output_dense_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_2_output_dense_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_2_output_dense_WEIGHT_PRECISION_0 = 8,
    parameter encoder_layer_2_output_dense_WEIGHT_PRECISION_1 = 3,
    parameter encoder_layer_2_output_dense_WEIGHT_TENSOR_SIZE_DIM_0 = 384,
    parameter encoder_layer_2_output_dense_WEIGHT_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_output_dense_WEIGHT_TENSOR_SIZE_DIM_1 = 96,
    parameter encoder_layer_2_output_dense_WEIGHT_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_output_dense_BIAS_PRECISION_0 = 8,
    parameter encoder_layer_2_output_dense_BIAS_PRECISION_1 = 3,
    parameter encoder_layer_2_output_dense_BIAS_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_output_dense_BIAS_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_output_dense_BIAS_TENSOR_SIZE_DIM_1 = 1,
    parameter encoder_layer_2_output_dense_BIAS_PARALLELISM_DIM_1 = 1,
    parameter encoder_layer_2_output_dense_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_2_output_dense_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_2_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_output_dense_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_2_output_dense_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_2_output_dense_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter add_5_DATA_IN_0_PRECISION_0 = 8,
    parameter add_5_DATA_IN_0_PRECISION_1 = 3,
    parameter add_5_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter add_5_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter add_5_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter add_5_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter add_5_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter add_5_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter add_5_DATA_IN_1_PRECISION_0 = 8,
    parameter add_5_DATA_IN_1_PRECISION_1 = 3,
    parameter add_5_DATA_IN_1_TENSOR_SIZE_DIM_0 = 96,
    parameter add_5_DATA_IN_1_PARALLELISM_DIM_0 = 4,
    parameter add_5_DATA_IN_1_TENSOR_SIZE_DIM_1 = 4,
    parameter add_5_DATA_IN_1_PARALLELISM_DIM_1 = 4,
    parameter add_5_DATA_IN_1_TENSOR_SIZE_DIM_2 = 1,
    parameter add_5_DATA_IN_1_PARALLELISM_DIM_2 = 1,
    parameter add_5_DATA_OUT_0_PRECISION_0 = 8,
    parameter add_5_DATA_OUT_0_PRECISION_1 = 3,
    parameter add_5_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter add_5_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter add_5_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter add_5_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter add_5_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter add_5_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_2_output_layer_norm_DATA_IN_0_PRECISION_0 = 8,
    parameter encoder_layer_2_output_layer_norm_DATA_IN_0_PRECISION_1 = 3,
    parameter encoder_layer_2_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_2_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_2_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter encoder_layer_2_output_layer_norm_DATA_OUT_0_PRECISION_0 = 8,
    parameter encoder_layer_2_output_layer_norm_DATA_OUT_0_PRECISION_1 = 3,
    parameter encoder_layer_2_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter encoder_layer_2_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter encoder_layer_2_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter encoder_layer_2_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter encoder_layer_2_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter encoder_layer_2_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter DATA_IN_0_PRECISION_0 = 8,
    parameter DATA_IN_0_PRECISION_1 = 3,
    parameter DATA_IN_0_TENSOR_SIZE_DIM_0 = 96,
    parameter DATA_IN_0_PARALLELISM_DIM_0 = 4,
    parameter DATA_IN_0_TENSOR_SIZE_DIM_1 = 4,
    parameter DATA_IN_0_PARALLELISM_DIM_1 = 4,
    parameter DATA_IN_0_TENSOR_SIZE_DIM_2 = 1,
    parameter DATA_IN_0_PARALLELISM_DIM_2 = 1,
    parameter DATA_OUT_0_PRECISION_0 = 8,
    parameter DATA_OUT_0_PRECISION_1 = 3,
    parameter DATA_OUT_0_TENSOR_SIZE_DIM_0 = 96,
    parameter DATA_OUT_0_PARALLELISM_DIM_0 = 4,
    parameter DATA_OUT_0_TENSOR_SIZE_DIM_1 = 4,
    parameter DATA_OUT_0_PARALLELISM_DIM_1 = 4,
    parameter DATA_OUT_0_TENSOR_SIZE_DIM_2 = 1,
    parameter DATA_OUT_0_PARALLELISM_DIM_2 = 1,
    parameter DATA_OUT_1_PRECISION_0 = 8,
    parameter DATA_OUT_1_PRECISION_1 = 3,
    parameter DATA_OUT_1_TENSOR_SIZE_DIM_0 = 96,
    parameter DATA_OUT_1_PARALLELISM_DIM_0 = 4,
    parameter DATA_OUT_1_TENSOR_SIZE_DIM_1 = 4,
    parameter DATA_OUT_1_PARALLELISM_DIM_1 = 4,
    parameter DATA_OUT_1_TENSOR_SIZE_DIM_2 = 1,
    parameter DATA_OUT_1_PARALLELISM_DIM_2 = 1
) (
    input clk,
    input rst,

    input  [DATA_IN_0_PRECISION_0-1:0] data_in_0 [DATA_IN_0_PARALLELISM_DIM_0*DATA_IN_0_PARALLELISM_DIM_1*DATA_IN_0_PARALLELISM_DIM_2-1:0],
    input  data_in_0_valid,
    output data_in_0_ready,
    output  [DATA_OUT_0_PRECISION_0-1:0] data_out_0 [DATA_OUT_0_PARALLELISM_DIM_0*DATA_OUT_0_PARALLELISM_DIM_1*DATA_OUT_0_PARALLELISM_DIM_2-1:0],
    output  data_out_0_valid,
    input data_out_0_ready
);

// --------------------------
//   df_split signals
// --------------------------
logic [df_split_DATA_IN_0_PRECISION_0-1:0]  df_split_data_in_0        [df_split_DATA_IN_0_PARALLELISM_DIM_0*df_split_DATA_IN_0_PARALLELISM_DIM_1*df_split_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             df_split_data_in_0_valid;
logic                             df_split_data_in_0_ready;
logic [df_split_DATA_OUT_0_PRECISION_0-1:0]  df_split_data_out_0        [df_split_DATA_OUT_0_PARALLELISM_DIM_0*df_split_DATA_OUT_0_PARALLELISM_DIM_1*df_split_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             df_split_data_out_0_valid;
logic                             df_split_data_out_0_ready;
logic [df_split_DATA_OUT_1_PRECISION_0-1:0]  df_split_data_out_1        [df_split_DATA_OUT_1_PARALLELISM_DIM_0*df_split_DATA_OUT_1_PARALLELISM_DIM_1*df_split_DATA_OUT_1_PARALLELISM_DIM_2-1:0];
logic                             df_split_data_out_1_valid;
logic                             df_split_data_out_1_ready;
// --------------------------
//   getitem signals
// --------------------------
logic [getitem_DATA_IN_0_PRECISION_0-1:0]  getitem_data_in_0        [getitem_DATA_IN_0_PARALLELISM_DIM_0*getitem_DATA_IN_0_PARALLELISM_DIM_1*getitem_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_data_in_0_valid;
logic                             getitem_data_in_0_ready;
logic [getitem_DATA_OUT_0_PRECISION_0-1:0]  getitem_data_out_0        [getitem_DATA_OUT_0_PARALLELISM_DIM_0*getitem_DATA_OUT_0_PARALLELISM_DIM_1*getitem_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_data_out_0_valid;
logic                             getitem_data_out_0_ready;
// --------------------------
//   getitem_1 signals
// --------------------------
logic [getitem_1_DATA_IN_1_PRECISION_0-1:0]  getitem_1_data_in_0        [getitem_1_DATA_IN_1_PARALLELISM_DIM_0*getitem_1_DATA_IN_1_PARALLELISM_DIM_1*getitem_1_DATA_IN_1_PARALLELISM_DIM_2-1:0];
logic                             getitem_1_data_in_0_valid;
logic                             getitem_1_data_in_0_ready;
logic [getitem_1_DATA_OUT_0_PRECISION_0-1:0]  getitem_1_data_out_0        [getitem_1_DATA_OUT_0_PARALLELISM_DIM_0*getitem_1_DATA_OUT_0_PARALLELISM_DIM_1*getitem_1_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_1_data_out_0_valid;
logic                             getitem_1_data_out_0_ready;
// --------------------------
//   encoder_layer_0_attention_self signals
// --------------------------
logic [encoder_layer_0_attention_self_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_0_attention_self_data_in_0        [encoder_layer_0_attention_self_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_0_attention_self_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_0_attention_self_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_0_attention_self_data_in_0_valid;
logic                             encoder_layer_0_attention_self_data_in_0_ready;
logic [encoder_layer_0_attention_self_QUERY_WEIGHT_PRECISION_0-1:0]  encoder_layer_0_attention_self_query_weight        [encoder_layer_0_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_0*encoder_layer_0_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_0_attention_self_query_weight_valid;
logic                             encoder_layer_0_attention_self_query_weight_ready;
logic [encoder_layer_0_attention_self_QUERY_BIAS_PRECISION_0-1:0]  encoder_layer_0_attention_self_query_bias        [encoder_layer_0_attention_self_QUERY_BIAS_PARALLELISM_DIM_0*encoder_layer_0_attention_self_QUERY_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_0_attention_self_query_bias_valid;
logic                             encoder_layer_0_attention_self_query_bias_ready;
logic [encoder_layer_0_attention_self_KEY_WEIGHT_PRECISION_0-1:0]  encoder_layer_0_attention_self_key_weight        [encoder_layer_0_attention_self_KEY_WEIGHT_PARALLELISM_DIM_0*encoder_layer_0_attention_self_KEY_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_0_attention_self_key_weight_valid;
logic                             encoder_layer_0_attention_self_key_weight_ready;
logic [encoder_layer_0_attention_self_KEY_BIAS_PRECISION_0-1:0]  encoder_layer_0_attention_self_key_bias        [encoder_layer_0_attention_self_KEY_BIAS_PARALLELISM_DIM_0*encoder_layer_0_attention_self_KEY_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_0_attention_self_key_bias_valid;
logic                             encoder_layer_0_attention_self_key_bias_ready;
logic [encoder_layer_0_attention_self_VALUE_WEIGHT_PRECISION_0-1:0]  encoder_layer_0_attention_self_value_weight        [encoder_layer_0_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_0*encoder_layer_0_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_0_attention_self_value_weight_valid;
logic                             encoder_layer_0_attention_self_value_weight_ready;
logic [encoder_layer_0_attention_self_VALUE_BIAS_PRECISION_0-1:0]  encoder_layer_0_attention_self_value_bias        [encoder_layer_0_attention_self_VALUE_BIAS_PARALLELISM_DIM_0*encoder_layer_0_attention_self_VALUE_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_0_attention_self_value_bias_valid;
logic                             encoder_layer_0_attention_self_value_bias_ready;
logic [encoder_layer_0_attention_self_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_0_attention_self_data_out_0        [encoder_layer_0_attention_self_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_0_attention_self_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_0_attention_self_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_0_attention_self_data_out_0_valid;
logic                             encoder_layer_0_attention_self_data_out_0_ready;
// --------------------------
//   encoder_layer_0_attention_output_dense signals
// --------------------------
logic [encoder_layer_0_attention_output_dense_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_0_attention_output_dense_data_in_0        [encoder_layer_0_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_0_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_0_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_0_attention_output_dense_data_in_0_valid;
logic                             encoder_layer_0_attention_output_dense_data_in_0_ready;
logic [encoder_layer_0_attention_output_dense_WEIGHT_PRECISION_0-1:0]  encoder_layer_0_attention_output_dense_weight        [encoder_layer_0_attention_output_dense_WEIGHT_PARALLELISM_DIM_0*encoder_layer_0_attention_output_dense_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_0_attention_output_dense_weight_valid;
logic                             encoder_layer_0_attention_output_dense_weight_ready;
logic [encoder_layer_0_attention_output_dense_BIAS_PRECISION_0-1:0]  encoder_layer_0_attention_output_dense_bias        [encoder_layer_0_attention_output_dense_BIAS_PARALLELISM_DIM_0*encoder_layer_0_attention_output_dense_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_0_attention_output_dense_bias_valid;
logic                             encoder_layer_0_attention_output_dense_bias_ready;
logic [encoder_layer_0_attention_output_dense_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_0_attention_output_dense_data_out_0        [encoder_layer_0_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_0_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_0_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_0_attention_output_dense_data_out_0_valid;
logic                             encoder_layer_0_attention_output_dense_data_out_0_ready;
// --------------------------
//   add signals
// --------------------------
logic [add_DATA_IN_0_PRECISION_0-1:0]  add_data_in_0        [add_DATA_IN_0_PARALLELISM_DIM_0*add_DATA_IN_0_PARALLELISM_DIM_1*add_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             add_data_in_0_valid;
logic                             add_data_in_0_ready;
logic [add_DATA_IN_1_PRECISION_0-1:0]  add_data_in_1        [add_DATA_IN_1_PARALLELISM_DIM_0*add_DATA_IN_1_PARALLELISM_DIM_1*add_DATA_IN_1_PARALLELISM_DIM_2-1:0];
logic                             add_data_in_1_valid;
logic                             add_data_in_1_ready;
logic [add_DATA_OUT_0_PRECISION_0-1:0]  add_data_out_0        [add_DATA_OUT_0_PARALLELISM_DIM_0*add_DATA_OUT_0_PARALLELISM_DIM_1*add_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             add_data_out_0_valid;
logic                             add_data_out_0_ready;
// --------------------------
//   encoder_layer_0_attention_output_layer_norm signals
// --------------------------
logic [encoder_layer_0_attention_output_layer_norm_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_0_attention_output_layer_norm_data_in_0        [encoder_layer_0_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_0_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_0_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_0_attention_output_layer_norm_data_in_0_valid;
logic                             encoder_layer_0_attention_output_layer_norm_data_in_0_ready;
logic [encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_0_attention_output_layer_norm_data_out_0        [encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_0_attention_output_layer_norm_data_out_0_valid;
logic                             encoder_layer_0_attention_output_layer_norm_data_out_0_ready;
// --------------------------
//   df_split_1 signals
// --------------------------
logic [df_split_1_DATA_IN_0_PRECISION_0-1:0]  df_split_1_data_in_0        [df_split_1_DATA_IN_0_PARALLELISM_DIM_0*df_split_1_DATA_IN_0_PARALLELISM_DIM_1*df_split_1_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             df_split_1_data_in_0_valid;
logic                             df_split_1_data_in_0_ready;
logic [df_split_1_DATA_OUT_0_PRECISION_0-1:0]  df_split_1_data_out_0        [df_split_1_DATA_OUT_0_PARALLELISM_DIM_0*df_split_1_DATA_OUT_0_PARALLELISM_DIM_1*df_split_1_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             df_split_1_data_out_0_valid;
logic                             df_split_1_data_out_0_ready;
logic [df_split_1_DATA_OUT_1_PRECISION_0-1:0]  df_split_1_data_out_1        [df_split_1_DATA_OUT_1_PARALLELISM_DIM_0*df_split_1_DATA_OUT_1_PARALLELISM_DIM_1*df_split_1_DATA_OUT_1_PARALLELISM_DIM_2-1:0];
logic                             df_split_1_data_out_1_valid;
logic                             df_split_1_data_out_1_ready;
// --------------------------
//   getitem_2 signals
// --------------------------
logic [getitem_2_DATA_IN_0_PRECISION_0-1:0]  getitem_2_data_in_0        [getitem_2_DATA_IN_0_PARALLELISM_DIM_0*getitem_2_DATA_IN_0_PARALLELISM_DIM_1*getitem_2_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_2_data_in_0_valid;
logic                             getitem_2_data_in_0_ready;
logic [getitem_2_DATA_OUT_0_PRECISION_0-1:0]  getitem_2_data_out_0        [getitem_2_DATA_OUT_0_PARALLELISM_DIM_0*getitem_2_DATA_OUT_0_PARALLELISM_DIM_1*getitem_2_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_2_data_out_0_valid;
logic                             getitem_2_data_out_0_ready;
// --------------------------
//   getitem_3 signals
// --------------------------
logic [getitem_3_DATA_IN_1_PRECISION_0-1:0]  getitem_3_data_in_0        [getitem_3_DATA_IN_1_PARALLELISM_DIM_0*getitem_3_DATA_IN_1_PARALLELISM_DIM_1*getitem_3_DATA_IN_1_PARALLELISM_DIM_2-1:0];
logic                             getitem_3_data_in_0_valid;
logic                             getitem_3_data_in_0_ready;
logic [getitem_3_DATA_OUT_0_PRECISION_0-1:0]  getitem_3_data_out_0        [getitem_3_DATA_OUT_0_PARALLELISM_DIM_0*getitem_3_DATA_OUT_0_PARALLELISM_DIM_1*getitem_3_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_3_data_out_0_valid;
logic                             getitem_3_data_out_0_ready;
// --------------------------
//   encoder_layer_0_intermediate_dense signals
// --------------------------
logic [encoder_layer_0_intermediate_dense_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_0_intermediate_dense_data_in_0        [encoder_layer_0_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_0_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_0_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_0_intermediate_dense_data_in_0_valid;
logic                             encoder_layer_0_intermediate_dense_data_in_0_ready;
logic [encoder_layer_0_intermediate_dense_WEIGHT_PRECISION_0-1:0]  encoder_layer_0_intermediate_dense_weight        [encoder_layer_0_intermediate_dense_WEIGHT_PARALLELISM_DIM_0*encoder_layer_0_intermediate_dense_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_0_intermediate_dense_weight_valid;
logic                             encoder_layer_0_intermediate_dense_weight_ready;
logic [encoder_layer_0_intermediate_dense_BIAS_PRECISION_0-1:0]  encoder_layer_0_intermediate_dense_bias        [encoder_layer_0_intermediate_dense_BIAS_PARALLELISM_DIM_0*encoder_layer_0_intermediate_dense_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_0_intermediate_dense_bias_valid;
logic                             encoder_layer_0_intermediate_dense_bias_ready;
logic [encoder_layer_0_intermediate_dense_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_0_intermediate_dense_data_out_0        [encoder_layer_0_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_0_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_0_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_0_intermediate_dense_data_out_0_valid;
logic                             encoder_layer_0_intermediate_dense_data_out_0_ready;
// --------------------------
//   encoder_layer_0_intermediate_intermediate_act_fn signals
// --------------------------
logic [encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_0_intermediate_intermediate_act_fn_data_in_0        [encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_0_intermediate_intermediate_act_fn_data_in_0_valid;
logic                             encoder_layer_0_intermediate_intermediate_act_fn_data_in_0_ready;
logic [encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_0_intermediate_intermediate_act_fn_data_out_0        [encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_0_intermediate_intermediate_act_fn_data_out_0_valid;
logic                             encoder_layer_0_intermediate_intermediate_act_fn_data_out_0_ready;
// --------------------------
//   encoder_layer_0_output_dense signals
// --------------------------
logic [encoder_layer_0_output_dense_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_0_output_dense_data_in_0        [encoder_layer_0_output_dense_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_0_output_dense_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_0_output_dense_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_0_output_dense_data_in_0_valid;
logic                             encoder_layer_0_output_dense_data_in_0_ready;
logic [encoder_layer_0_output_dense_WEIGHT_PRECISION_0-1:0]  encoder_layer_0_output_dense_weight        [encoder_layer_0_output_dense_WEIGHT_PARALLELISM_DIM_0*encoder_layer_0_output_dense_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_0_output_dense_weight_valid;
logic                             encoder_layer_0_output_dense_weight_ready;
logic [encoder_layer_0_output_dense_BIAS_PRECISION_0-1:0]  encoder_layer_0_output_dense_bias        [encoder_layer_0_output_dense_BIAS_PARALLELISM_DIM_0*encoder_layer_0_output_dense_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_0_output_dense_bias_valid;
logic                             encoder_layer_0_output_dense_bias_ready;
logic [encoder_layer_0_output_dense_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_0_output_dense_data_out_0        [encoder_layer_0_output_dense_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_0_output_dense_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_0_output_dense_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_0_output_dense_data_out_0_valid;
logic                             encoder_layer_0_output_dense_data_out_0_ready;
// --------------------------
//   add_1 signals
// --------------------------
logic [add_1_DATA_IN_0_PRECISION_0-1:0]  add_1_data_in_0        [add_1_DATA_IN_0_PARALLELISM_DIM_0*add_1_DATA_IN_0_PARALLELISM_DIM_1*add_1_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             add_1_data_in_0_valid;
logic                             add_1_data_in_0_ready;
logic [add_1_DATA_IN_1_PRECISION_0-1:0]  add_1_data_in_1        [add_1_DATA_IN_1_PARALLELISM_DIM_0*add_1_DATA_IN_1_PARALLELISM_DIM_1*add_1_DATA_IN_1_PARALLELISM_DIM_2-1:0];
logic                             add_1_data_in_1_valid;
logic                             add_1_data_in_1_ready;
logic [add_1_DATA_OUT_0_PRECISION_0-1:0]  add_1_data_out_0        [add_1_DATA_OUT_0_PARALLELISM_DIM_0*add_1_DATA_OUT_0_PARALLELISM_DIM_1*add_1_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             add_1_data_out_0_valid;
logic                             add_1_data_out_0_ready;
// --------------------------
//   encoder_layer_0_output_layer_norm signals
// --------------------------
logic [encoder_layer_0_output_layer_norm_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_0_output_layer_norm_data_in_0        [encoder_layer_0_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_0_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_0_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_0_output_layer_norm_data_in_0_valid;
logic                             encoder_layer_0_output_layer_norm_data_in_0_ready;
logic [encoder_layer_0_output_layer_norm_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_0_output_layer_norm_data_out_0        [encoder_layer_0_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_0_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_0_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_0_output_layer_norm_data_out_0_valid;
logic                             encoder_layer_0_output_layer_norm_data_out_0_ready;
// --------------------------
//   df_split_2 signals
// --------------------------
logic [df_split_2_DATA_IN_0_PRECISION_0-1:0]  df_split_2_data_in_0        [df_split_2_DATA_IN_0_PARALLELISM_DIM_0*df_split_2_DATA_IN_0_PARALLELISM_DIM_1*df_split_2_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             df_split_2_data_in_0_valid;
logic                             df_split_2_data_in_0_ready;
logic [df_split_2_DATA_OUT_0_PRECISION_0-1:0]  df_split_2_data_out_0        [df_split_2_DATA_OUT_0_PARALLELISM_DIM_0*df_split_2_DATA_OUT_0_PARALLELISM_DIM_1*df_split_2_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             df_split_2_data_out_0_valid;
logic                             df_split_2_data_out_0_ready;
logic [df_split_2_DATA_OUT_1_PRECISION_0-1:0]  df_split_2_data_out_1        [df_split_2_DATA_OUT_1_PARALLELISM_DIM_0*df_split_2_DATA_OUT_1_PARALLELISM_DIM_1*df_split_2_DATA_OUT_1_PARALLELISM_DIM_2-1:0];
logic                             df_split_2_data_out_1_valid;
logic                             df_split_2_data_out_1_ready;
// --------------------------
//   getitem_4 signals
// --------------------------
logic [getitem_4_DATA_IN_0_PRECISION_0-1:0]  getitem_4_data_in_0        [getitem_4_DATA_IN_0_PARALLELISM_DIM_0*getitem_4_DATA_IN_0_PARALLELISM_DIM_1*getitem_4_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_4_data_in_0_valid;
logic                             getitem_4_data_in_0_ready;
logic [getitem_4_DATA_OUT_0_PRECISION_0-1:0]  getitem_4_data_out_0        [getitem_4_DATA_OUT_0_PARALLELISM_DIM_0*getitem_4_DATA_OUT_0_PARALLELISM_DIM_1*getitem_4_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_4_data_out_0_valid;
logic                             getitem_4_data_out_0_ready;
// --------------------------
//   getitem_5 signals
// --------------------------
logic [getitem_5_DATA_IN_1_PRECISION_0-1:0]  getitem_5_data_in_0        [getitem_5_DATA_IN_1_PARALLELISM_DIM_0*getitem_5_DATA_IN_1_PARALLELISM_DIM_1*getitem_5_DATA_IN_1_PARALLELISM_DIM_2-1:0];
logic                             getitem_5_data_in_0_valid;
logic                             getitem_5_data_in_0_ready;
logic [getitem_5_DATA_OUT_0_PRECISION_0-1:0]  getitem_5_data_out_0        [getitem_5_DATA_OUT_0_PARALLELISM_DIM_0*getitem_5_DATA_OUT_0_PARALLELISM_DIM_1*getitem_5_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_5_data_out_0_valid;
logic                             getitem_5_data_out_0_ready;
// --------------------------
//   encoder_layer_1_attention_self signals
// --------------------------
logic [encoder_layer_1_attention_self_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_1_attention_self_data_in_0        [encoder_layer_1_attention_self_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_1_attention_self_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_1_attention_self_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_1_attention_self_data_in_0_valid;
logic                             encoder_layer_1_attention_self_data_in_0_ready;
logic [encoder_layer_1_attention_self_QUERY_WEIGHT_PRECISION_0-1:0]  encoder_layer_1_attention_self_query_weight        [encoder_layer_1_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_0*encoder_layer_1_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_1_attention_self_query_weight_valid;
logic                             encoder_layer_1_attention_self_query_weight_ready;
logic [encoder_layer_1_attention_self_QUERY_BIAS_PRECISION_0-1:0]  encoder_layer_1_attention_self_query_bias        [encoder_layer_1_attention_self_QUERY_BIAS_PARALLELISM_DIM_0*encoder_layer_1_attention_self_QUERY_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_1_attention_self_query_bias_valid;
logic                             encoder_layer_1_attention_self_query_bias_ready;
logic [encoder_layer_1_attention_self_KEY_WEIGHT_PRECISION_0-1:0]  encoder_layer_1_attention_self_key_weight        [encoder_layer_1_attention_self_KEY_WEIGHT_PARALLELISM_DIM_0*encoder_layer_1_attention_self_KEY_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_1_attention_self_key_weight_valid;
logic                             encoder_layer_1_attention_self_key_weight_ready;
logic [encoder_layer_1_attention_self_KEY_BIAS_PRECISION_0-1:0]  encoder_layer_1_attention_self_key_bias        [encoder_layer_1_attention_self_KEY_BIAS_PARALLELISM_DIM_0*encoder_layer_1_attention_self_KEY_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_1_attention_self_key_bias_valid;
logic                             encoder_layer_1_attention_self_key_bias_ready;
logic [encoder_layer_1_attention_self_VALUE_WEIGHT_PRECISION_0-1:0]  encoder_layer_1_attention_self_value_weight        [encoder_layer_1_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_0*encoder_layer_1_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_1_attention_self_value_weight_valid;
logic                             encoder_layer_1_attention_self_value_weight_ready;
logic [encoder_layer_1_attention_self_VALUE_BIAS_PRECISION_0-1:0]  encoder_layer_1_attention_self_value_bias        [encoder_layer_1_attention_self_VALUE_BIAS_PARALLELISM_DIM_0*encoder_layer_1_attention_self_VALUE_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_1_attention_self_value_bias_valid;
logic                             encoder_layer_1_attention_self_value_bias_ready;
logic [encoder_layer_1_attention_self_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_1_attention_self_data_out_0        [encoder_layer_1_attention_self_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_1_attention_self_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_1_attention_self_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_1_attention_self_data_out_0_valid;
logic                             encoder_layer_1_attention_self_data_out_0_ready;
// --------------------------
//   encoder_layer_1_attention_output_dense signals
// --------------------------
logic [encoder_layer_1_attention_output_dense_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_1_attention_output_dense_data_in_0        [encoder_layer_1_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_1_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_1_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_1_attention_output_dense_data_in_0_valid;
logic                             encoder_layer_1_attention_output_dense_data_in_0_ready;
logic [encoder_layer_1_attention_output_dense_WEIGHT_PRECISION_0-1:0]  encoder_layer_1_attention_output_dense_weight        [encoder_layer_1_attention_output_dense_WEIGHT_PARALLELISM_DIM_0*encoder_layer_1_attention_output_dense_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_1_attention_output_dense_weight_valid;
logic                             encoder_layer_1_attention_output_dense_weight_ready;
logic [encoder_layer_1_attention_output_dense_BIAS_PRECISION_0-1:0]  encoder_layer_1_attention_output_dense_bias        [encoder_layer_1_attention_output_dense_BIAS_PARALLELISM_DIM_0*encoder_layer_1_attention_output_dense_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_1_attention_output_dense_bias_valid;
logic                             encoder_layer_1_attention_output_dense_bias_ready;
logic [encoder_layer_1_attention_output_dense_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_1_attention_output_dense_data_out_0        [encoder_layer_1_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_1_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_1_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_1_attention_output_dense_data_out_0_valid;
logic                             encoder_layer_1_attention_output_dense_data_out_0_ready;
// --------------------------
//   add_2 signals
// --------------------------
logic [add_2_DATA_IN_0_PRECISION_0-1:0]  add_2_data_in_0        [add_2_DATA_IN_0_PARALLELISM_DIM_0*add_2_DATA_IN_0_PARALLELISM_DIM_1*add_2_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             add_2_data_in_0_valid;
logic                             add_2_data_in_0_ready;
logic [add_2_DATA_IN_1_PRECISION_0-1:0]  add_2_data_in_1        [add_2_DATA_IN_1_PARALLELISM_DIM_0*add_2_DATA_IN_1_PARALLELISM_DIM_1*add_2_DATA_IN_1_PARALLELISM_DIM_2-1:0];
logic                             add_2_data_in_1_valid;
logic                             add_2_data_in_1_ready;
logic [add_2_DATA_OUT_0_PRECISION_0-1:0]  add_2_data_out_0        [add_2_DATA_OUT_0_PARALLELISM_DIM_0*add_2_DATA_OUT_0_PARALLELISM_DIM_1*add_2_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             add_2_data_out_0_valid;
logic                             add_2_data_out_0_ready;
// --------------------------
//   encoder_layer_1_attention_output_layer_norm signals
// --------------------------
logic [encoder_layer_1_attention_output_layer_norm_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_1_attention_output_layer_norm_data_in_0        [encoder_layer_1_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_1_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_1_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_1_attention_output_layer_norm_data_in_0_valid;
logic                             encoder_layer_1_attention_output_layer_norm_data_in_0_ready;
logic [encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_1_attention_output_layer_norm_data_out_0        [encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_1_attention_output_layer_norm_data_out_0_valid;
logic                             encoder_layer_1_attention_output_layer_norm_data_out_0_ready;
// --------------------------
//   df_split_3 signals
// --------------------------
logic [df_split_3_DATA_IN_0_PRECISION_0-1:0]  df_split_3_data_in_0        [df_split_3_DATA_IN_0_PARALLELISM_DIM_0*df_split_3_DATA_IN_0_PARALLELISM_DIM_1*df_split_3_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             df_split_3_data_in_0_valid;
logic                             df_split_3_data_in_0_ready;
logic [df_split_3_DATA_OUT_0_PRECISION_0-1:0]  df_split_3_data_out_0        [df_split_3_DATA_OUT_0_PARALLELISM_DIM_0*df_split_3_DATA_OUT_0_PARALLELISM_DIM_1*df_split_3_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             df_split_3_data_out_0_valid;
logic                             df_split_3_data_out_0_ready;
logic [df_split_3_DATA_OUT_1_PRECISION_0-1:0]  df_split_3_data_out_1        [df_split_3_DATA_OUT_1_PARALLELISM_DIM_0*df_split_3_DATA_OUT_1_PARALLELISM_DIM_1*df_split_3_DATA_OUT_1_PARALLELISM_DIM_2-1:0];
logic                             df_split_3_data_out_1_valid;
logic                             df_split_3_data_out_1_ready;
// --------------------------
//   getitem_6 signals
// --------------------------
logic [getitem_6_DATA_IN_0_PRECISION_0-1:0]  getitem_6_data_in_0        [getitem_6_DATA_IN_0_PARALLELISM_DIM_0*getitem_6_DATA_IN_0_PARALLELISM_DIM_1*getitem_6_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_6_data_in_0_valid;
logic                             getitem_6_data_in_0_ready;
logic [getitem_6_DATA_OUT_0_PRECISION_0-1:0]  getitem_6_data_out_0        [getitem_6_DATA_OUT_0_PARALLELISM_DIM_0*getitem_6_DATA_OUT_0_PARALLELISM_DIM_1*getitem_6_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_6_data_out_0_valid;
logic                             getitem_6_data_out_0_ready;
// --------------------------
//   getitem_7 signals
// --------------------------
logic [getitem_7_DATA_IN_1_PRECISION_0-1:0]  getitem_7_data_in_0        [getitem_7_DATA_IN_1_PARALLELISM_DIM_0*getitem_7_DATA_IN_1_PARALLELISM_DIM_1*getitem_7_DATA_IN_1_PARALLELISM_DIM_2-1:0];
logic                             getitem_7_data_in_0_valid;
logic                             getitem_7_data_in_0_ready;
logic [getitem_7_DATA_OUT_0_PRECISION_0-1:0]  getitem_7_data_out_0        [getitem_7_DATA_OUT_0_PARALLELISM_DIM_0*getitem_7_DATA_OUT_0_PARALLELISM_DIM_1*getitem_7_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_7_data_out_0_valid;
logic                             getitem_7_data_out_0_ready;
// --------------------------
//   encoder_layer_1_intermediate_dense signals
// --------------------------
logic [encoder_layer_1_intermediate_dense_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_1_intermediate_dense_data_in_0        [encoder_layer_1_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_1_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_1_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_1_intermediate_dense_data_in_0_valid;
logic                             encoder_layer_1_intermediate_dense_data_in_0_ready;
logic [encoder_layer_1_intermediate_dense_WEIGHT_PRECISION_0-1:0]  encoder_layer_1_intermediate_dense_weight        [encoder_layer_1_intermediate_dense_WEIGHT_PARALLELISM_DIM_0*encoder_layer_1_intermediate_dense_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_1_intermediate_dense_weight_valid;
logic                             encoder_layer_1_intermediate_dense_weight_ready;
logic [encoder_layer_1_intermediate_dense_BIAS_PRECISION_0-1:0]  encoder_layer_1_intermediate_dense_bias        [encoder_layer_1_intermediate_dense_BIAS_PARALLELISM_DIM_0*encoder_layer_1_intermediate_dense_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_1_intermediate_dense_bias_valid;
logic                             encoder_layer_1_intermediate_dense_bias_ready;
logic [encoder_layer_1_intermediate_dense_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_1_intermediate_dense_data_out_0        [encoder_layer_1_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_1_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_1_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_1_intermediate_dense_data_out_0_valid;
logic                             encoder_layer_1_intermediate_dense_data_out_0_ready;
// --------------------------
//   encoder_layer_1_intermediate_intermediate_act_fn signals
// --------------------------
logic [encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_1_intermediate_intermediate_act_fn_data_in_0        [encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_1_intermediate_intermediate_act_fn_data_in_0_valid;
logic                             encoder_layer_1_intermediate_intermediate_act_fn_data_in_0_ready;
logic [encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_1_intermediate_intermediate_act_fn_data_out_0        [encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_1_intermediate_intermediate_act_fn_data_out_0_valid;
logic                             encoder_layer_1_intermediate_intermediate_act_fn_data_out_0_ready;
// --------------------------
//   encoder_layer_1_output_dense signals
// --------------------------
logic [encoder_layer_1_output_dense_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_1_output_dense_data_in_0        [encoder_layer_1_output_dense_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_1_output_dense_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_1_output_dense_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_1_output_dense_data_in_0_valid;
logic                             encoder_layer_1_output_dense_data_in_0_ready;
logic [encoder_layer_1_output_dense_WEIGHT_PRECISION_0-1:0]  encoder_layer_1_output_dense_weight        [encoder_layer_1_output_dense_WEIGHT_PARALLELISM_DIM_0*encoder_layer_1_output_dense_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_1_output_dense_weight_valid;
logic                             encoder_layer_1_output_dense_weight_ready;
logic [encoder_layer_1_output_dense_BIAS_PRECISION_0-1:0]  encoder_layer_1_output_dense_bias        [encoder_layer_1_output_dense_BIAS_PARALLELISM_DIM_0*encoder_layer_1_output_dense_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_1_output_dense_bias_valid;
logic                             encoder_layer_1_output_dense_bias_ready;
logic [encoder_layer_1_output_dense_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_1_output_dense_data_out_0        [encoder_layer_1_output_dense_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_1_output_dense_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_1_output_dense_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_1_output_dense_data_out_0_valid;
logic                             encoder_layer_1_output_dense_data_out_0_ready;
// --------------------------
//   add_3 signals
// --------------------------
logic [add_3_DATA_IN_0_PRECISION_0-1:0]  add_3_data_in_0        [add_3_DATA_IN_0_PARALLELISM_DIM_0*add_3_DATA_IN_0_PARALLELISM_DIM_1*add_3_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             add_3_data_in_0_valid;
logic                             add_3_data_in_0_ready;
logic [add_3_DATA_IN_1_PRECISION_0-1:0]  add_3_data_in_1        [add_3_DATA_IN_1_PARALLELISM_DIM_0*add_3_DATA_IN_1_PARALLELISM_DIM_1*add_3_DATA_IN_1_PARALLELISM_DIM_2-1:0];
logic                             add_3_data_in_1_valid;
logic                             add_3_data_in_1_ready;
logic [add_3_DATA_OUT_0_PRECISION_0-1:0]  add_3_data_out_0        [add_3_DATA_OUT_0_PARALLELISM_DIM_0*add_3_DATA_OUT_0_PARALLELISM_DIM_1*add_3_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             add_3_data_out_0_valid;
logic                             add_3_data_out_0_ready;
// --------------------------
//   encoder_layer_1_output_layer_norm signals
// --------------------------
logic [encoder_layer_1_output_layer_norm_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_1_output_layer_norm_data_in_0        [encoder_layer_1_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_1_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_1_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_1_output_layer_norm_data_in_0_valid;
logic                             encoder_layer_1_output_layer_norm_data_in_0_ready;
logic [encoder_layer_1_output_layer_norm_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_1_output_layer_norm_data_out_0        [encoder_layer_1_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_1_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_1_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_1_output_layer_norm_data_out_0_valid;
logic                             encoder_layer_1_output_layer_norm_data_out_0_ready;
// --------------------------
//   df_split_4 signals
// --------------------------
logic [df_split_4_DATA_IN_0_PRECISION_0-1:0]  df_split_4_data_in_0        [df_split_4_DATA_IN_0_PARALLELISM_DIM_0*df_split_4_DATA_IN_0_PARALLELISM_DIM_1*df_split_4_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             df_split_4_data_in_0_valid;
logic                             df_split_4_data_in_0_ready;
logic [df_split_4_DATA_OUT_0_PRECISION_0-1:0]  df_split_4_data_out_0        [df_split_4_DATA_OUT_0_PARALLELISM_DIM_0*df_split_4_DATA_OUT_0_PARALLELISM_DIM_1*df_split_4_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             df_split_4_data_out_0_valid;
logic                             df_split_4_data_out_0_ready;
logic [df_split_4_DATA_OUT_1_PRECISION_0-1:0]  df_split_4_data_out_1        [df_split_4_DATA_OUT_1_PARALLELISM_DIM_0*df_split_4_DATA_OUT_1_PARALLELISM_DIM_1*df_split_4_DATA_OUT_1_PARALLELISM_DIM_2-1:0];
logic                             df_split_4_data_out_1_valid;
logic                             df_split_4_data_out_1_ready;
// --------------------------
//   getitem_8 signals
// --------------------------
logic [getitem_8_DATA_IN_0_PRECISION_0-1:0]  getitem_8_data_in_0        [getitem_8_DATA_IN_0_PARALLELISM_DIM_0*getitem_8_DATA_IN_0_PARALLELISM_DIM_1*getitem_8_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_8_data_in_0_valid;
logic                             getitem_8_data_in_0_ready;
logic [getitem_8_DATA_OUT_0_PRECISION_0-1:0]  getitem_8_data_out_0        [getitem_8_DATA_OUT_0_PARALLELISM_DIM_0*getitem_8_DATA_OUT_0_PARALLELISM_DIM_1*getitem_8_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_8_data_out_0_valid;
logic                             getitem_8_data_out_0_ready;
// --------------------------
//   getitem_9 signals
// --------------------------
logic [getitem_9_DATA_IN_1_PRECISION_0-1:0]  getitem_9_data_in_0        [getitem_9_DATA_IN_1_PARALLELISM_DIM_0*getitem_9_DATA_IN_1_PARALLELISM_DIM_1*getitem_9_DATA_IN_1_PARALLELISM_DIM_2-1:0];
logic                             getitem_9_data_in_0_valid;
logic                             getitem_9_data_in_0_ready;
logic [getitem_9_DATA_OUT_0_PRECISION_0-1:0]  getitem_9_data_out_0        [getitem_9_DATA_OUT_0_PARALLELISM_DIM_0*getitem_9_DATA_OUT_0_PARALLELISM_DIM_1*getitem_9_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_9_data_out_0_valid;
logic                             getitem_9_data_out_0_ready;
// --------------------------
//   encoder_layer_2_attention_self signals
// --------------------------
logic [encoder_layer_2_attention_self_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_2_attention_self_data_in_0        [encoder_layer_2_attention_self_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_2_attention_self_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_2_attention_self_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_2_attention_self_data_in_0_valid;
logic                             encoder_layer_2_attention_self_data_in_0_ready;
logic [encoder_layer_2_attention_self_QUERY_WEIGHT_PRECISION_0-1:0]  encoder_layer_2_attention_self_query_weight        [encoder_layer_2_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_0*encoder_layer_2_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_2_attention_self_query_weight_valid;
logic                             encoder_layer_2_attention_self_query_weight_ready;
logic [encoder_layer_2_attention_self_QUERY_BIAS_PRECISION_0-1:0]  encoder_layer_2_attention_self_query_bias        [encoder_layer_2_attention_self_QUERY_BIAS_PARALLELISM_DIM_0*encoder_layer_2_attention_self_QUERY_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_2_attention_self_query_bias_valid;
logic                             encoder_layer_2_attention_self_query_bias_ready;
logic [encoder_layer_2_attention_self_KEY_WEIGHT_PRECISION_0-1:0]  encoder_layer_2_attention_self_key_weight        [encoder_layer_2_attention_self_KEY_WEIGHT_PARALLELISM_DIM_0*encoder_layer_2_attention_self_KEY_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_2_attention_self_key_weight_valid;
logic                             encoder_layer_2_attention_self_key_weight_ready;
logic [encoder_layer_2_attention_self_KEY_BIAS_PRECISION_0-1:0]  encoder_layer_2_attention_self_key_bias        [encoder_layer_2_attention_self_KEY_BIAS_PARALLELISM_DIM_0*encoder_layer_2_attention_self_KEY_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_2_attention_self_key_bias_valid;
logic                             encoder_layer_2_attention_self_key_bias_ready;
logic [encoder_layer_2_attention_self_VALUE_WEIGHT_PRECISION_0-1:0]  encoder_layer_2_attention_self_value_weight        [encoder_layer_2_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_0*encoder_layer_2_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_2_attention_self_value_weight_valid;
logic                             encoder_layer_2_attention_self_value_weight_ready;
logic [encoder_layer_2_attention_self_VALUE_BIAS_PRECISION_0-1:0]  encoder_layer_2_attention_self_value_bias        [encoder_layer_2_attention_self_VALUE_BIAS_PARALLELISM_DIM_0*encoder_layer_2_attention_self_VALUE_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_2_attention_self_value_bias_valid;
logic                             encoder_layer_2_attention_self_value_bias_ready;
logic [encoder_layer_2_attention_self_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_2_attention_self_data_out_0        [encoder_layer_2_attention_self_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_2_attention_self_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_2_attention_self_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_2_attention_self_data_out_0_valid;
logic                             encoder_layer_2_attention_self_data_out_0_ready;
// --------------------------
//   encoder_layer_2_attention_output_dense signals
// --------------------------
logic [encoder_layer_2_attention_output_dense_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_2_attention_output_dense_data_in_0        [encoder_layer_2_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_2_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_2_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_2_attention_output_dense_data_in_0_valid;
logic                             encoder_layer_2_attention_output_dense_data_in_0_ready;
logic [encoder_layer_2_attention_output_dense_WEIGHT_PRECISION_0-1:0]  encoder_layer_2_attention_output_dense_weight        [encoder_layer_2_attention_output_dense_WEIGHT_PARALLELISM_DIM_0*encoder_layer_2_attention_output_dense_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_2_attention_output_dense_weight_valid;
logic                             encoder_layer_2_attention_output_dense_weight_ready;
logic [encoder_layer_2_attention_output_dense_BIAS_PRECISION_0-1:0]  encoder_layer_2_attention_output_dense_bias        [encoder_layer_2_attention_output_dense_BIAS_PARALLELISM_DIM_0*encoder_layer_2_attention_output_dense_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_2_attention_output_dense_bias_valid;
logic                             encoder_layer_2_attention_output_dense_bias_ready;
logic [encoder_layer_2_attention_output_dense_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_2_attention_output_dense_data_out_0        [encoder_layer_2_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_2_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_2_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_2_attention_output_dense_data_out_0_valid;
logic                             encoder_layer_2_attention_output_dense_data_out_0_ready;
// --------------------------
//   add_4 signals
// --------------------------
logic [add_4_DATA_IN_0_PRECISION_0-1:0]  add_4_data_in_0        [add_4_DATA_IN_0_PARALLELISM_DIM_0*add_4_DATA_IN_0_PARALLELISM_DIM_1*add_4_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             add_4_data_in_0_valid;
logic                             add_4_data_in_0_ready;
logic [add_4_DATA_IN_1_PRECISION_0-1:0]  add_4_data_in_1        [add_4_DATA_IN_1_PARALLELISM_DIM_0*add_4_DATA_IN_1_PARALLELISM_DIM_1*add_4_DATA_IN_1_PARALLELISM_DIM_2-1:0];
logic                             add_4_data_in_1_valid;
logic                             add_4_data_in_1_ready;
logic [add_4_DATA_OUT_0_PRECISION_0-1:0]  add_4_data_out_0        [add_4_DATA_OUT_0_PARALLELISM_DIM_0*add_4_DATA_OUT_0_PARALLELISM_DIM_1*add_4_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             add_4_data_out_0_valid;
logic                             add_4_data_out_0_ready;
// --------------------------
//   encoder_layer_2_attention_output_layer_norm signals
// --------------------------
logic [encoder_layer_2_attention_output_layer_norm_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_2_attention_output_layer_norm_data_in_0        [encoder_layer_2_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_2_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_2_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_2_attention_output_layer_norm_data_in_0_valid;
logic                             encoder_layer_2_attention_output_layer_norm_data_in_0_ready;
logic [encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_2_attention_output_layer_norm_data_out_0        [encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_2_attention_output_layer_norm_data_out_0_valid;
logic                             encoder_layer_2_attention_output_layer_norm_data_out_0_ready;
// --------------------------
//   df_split_5 signals
// --------------------------
logic [df_split_5_DATA_IN_0_PRECISION_0-1:0]  df_split_5_data_in_0        [df_split_5_DATA_IN_0_PARALLELISM_DIM_0*df_split_5_DATA_IN_0_PARALLELISM_DIM_1*df_split_5_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             df_split_5_data_in_0_valid;
logic                             df_split_5_data_in_0_ready;
logic [df_split_5_DATA_OUT_0_PRECISION_0-1:0]  df_split_5_data_out_0        [df_split_5_DATA_OUT_0_PARALLELISM_DIM_0*df_split_5_DATA_OUT_0_PARALLELISM_DIM_1*df_split_5_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             df_split_5_data_out_0_valid;
logic                             df_split_5_data_out_0_ready;
logic [df_split_5_DATA_OUT_1_PRECISION_0-1:0]  df_split_5_data_out_1        [df_split_5_DATA_OUT_1_PARALLELISM_DIM_0*df_split_5_DATA_OUT_1_PARALLELISM_DIM_1*df_split_5_DATA_OUT_1_PARALLELISM_DIM_2-1:0];
logic                             df_split_5_data_out_1_valid;
logic                             df_split_5_data_out_1_ready;
// --------------------------
//   getitem_10 signals
// --------------------------
logic [getitem_10_DATA_IN_0_PRECISION_0-1:0]  getitem_10_data_in_0        [getitem_10_DATA_IN_0_PARALLELISM_DIM_0*getitem_10_DATA_IN_0_PARALLELISM_DIM_1*getitem_10_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_10_data_in_0_valid;
logic                             getitem_10_data_in_0_ready;
logic [getitem_10_DATA_OUT_0_PRECISION_0-1:0]  getitem_10_data_out_0        [getitem_10_DATA_OUT_0_PARALLELISM_DIM_0*getitem_10_DATA_OUT_0_PARALLELISM_DIM_1*getitem_10_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_10_data_out_0_valid;
logic                             getitem_10_data_out_0_ready;
// --------------------------
//   getitem_11 signals
// --------------------------
logic [getitem_11_DATA_IN_1_PRECISION_0-1:0]  getitem_11_data_in_0        [getitem_11_DATA_IN_1_PARALLELISM_DIM_0*getitem_11_DATA_IN_1_PARALLELISM_DIM_1*getitem_11_DATA_IN_1_PARALLELISM_DIM_2-1:0];
logic                             getitem_11_data_in_0_valid;
logic                             getitem_11_data_in_0_ready;
logic [getitem_11_DATA_OUT_0_PRECISION_0-1:0]  getitem_11_data_out_0        [getitem_11_DATA_OUT_0_PARALLELISM_DIM_0*getitem_11_DATA_OUT_0_PARALLELISM_DIM_1*getitem_11_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             getitem_11_data_out_0_valid;
logic                             getitem_11_data_out_0_ready;
// --------------------------
//   encoder_layer_2_intermediate_dense signals
// --------------------------
logic [encoder_layer_2_intermediate_dense_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_2_intermediate_dense_data_in_0        [encoder_layer_2_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_2_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_2_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_2_intermediate_dense_data_in_0_valid;
logic                             encoder_layer_2_intermediate_dense_data_in_0_ready;
logic [encoder_layer_2_intermediate_dense_WEIGHT_PRECISION_0-1:0]  encoder_layer_2_intermediate_dense_weight        [encoder_layer_2_intermediate_dense_WEIGHT_PARALLELISM_DIM_0*encoder_layer_2_intermediate_dense_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_2_intermediate_dense_weight_valid;
logic                             encoder_layer_2_intermediate_dense_weight_ready;
logic [encoder_layer_2_intermediate_dense_BIAS_PRECISION_0-1:0]  encoder_layer_2_intermediate_dense_bias        [encoder_layer_2_intermediate_dense_BIAS_PARALLELISM_DIM_0*encoder_layer_2_intermediate_dense_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_2_intermediate_dense_bias_valid;
logic                             encoder_layer_2_intermediate_dense_bias_ready;
logic [encoder_layer_2_intermediate_dense_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_2_intermediate_dense_data_out_0        [encoder_layer_2_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_2_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_2_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_2_intermediate_dense_data_out_0_valid;
logic                             encoder_layer_2_intermediate_dense_data_out_0_ready;
// --------------------------
//   encoder_layer_2_intermediate_intermediate_act_fn signals
// --------------------------
logic [encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_2_intermediate_intermediate_act_fn_data_in_0        [encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_2_intermediate_intermediate_act_fn_data_in_0_valid;
logic                             encoder_layer_2_intermediate_intermediate_act_fn_data_in_0_ready;
logic [encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_2_intermediate_intermediate_act_fn_data_out_0        [encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_2_intermediate_intermediate_act_fn_data_out_0_valid;
logic                             encoder_layer_2_intermediate_intermediate_act_fn_data_out_0_ready;
// --------------------------
//   encoder_layer_2_output_dense signals
// --------------------------
logic [encoder_layer_2_output_dense_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_2_output_dense_data_in_0        [encoder_layer_2_output_dense_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_2_output_dense_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_2_output_dense_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_2_output_dense_data_in_0_valid;
logic                             encoder_layer_2_output_dense_data_in_0_ready;
logic [encoder_layer_2_output_dense_WEIGHT_PRECISION_0-1:0]  encoder_layer_2_output_dense_weight        [encoder_layer_2_output_dense_WEIGHT_PARALLELISM_DIM_0*encoder_layer_2_output_dense_WEIGHT_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_2_output_dense_weight_valid;
logic                             encoder_layer_2_output_dense_weight_ready;
logic [encoder_layer_2_output_dense_BIAS_PRECISION_0-1:0]  encoder_layer_2_output_dense_bias        [encoder_layer_2_output_dense_BIAS_PARALLELISM_DIM_0*encoder_layer_2_output_dense_BIAS_PARALLELISM_DIM_1-1:0];
logic                             encoder_layer_2_output_dense_bias_valid;
logic                             encoder_layer_2_output_dense_bias_ready;
logic [encoder_layer_2_output_dense_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_2_output_dense_data_out_0        [encoder_layer_2_output_dense_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_2_output_dense_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_2_output_dense_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_2_output_dense_data_out_0_valid;
logic                             encoder_layer_2_output_dense_data_out_0_ready;
// --------------------------
//   add_5 signals
// --------------------------
logic [add_5_DATA_IN_0_PRECISION_0-1:0]  add_5_data_in_0        [add_5_DATA_IN_0_PARALLELISM_DIM_0*add_5_DATA_IN_0_PARALLELISM_DIM_1*add_5_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             add_5_data_in_0_valid;
logic                             add_5_data_in_0_ready;
logic [add_5_DATA_IN_1_PRECISION_0-1:0]  add_5_data_in_1        [add_5_DATA_IN_1_PARALLELISM_DIM_0*add_5_DATA_IN_1_PARALLELISM_DIM_1*add_5_DATA_IN_1_PARALLELISM_DIM_2-1:0];
logic                             add_5_data_in_1_valid;
logic                             add_5_data_in_1_ready;
logic [add_5_DATA_OUT_0_PRECISION_0-1:0]  add_5_data_out_0        [add_5_DATA_OUT_0_PARALLELISM_DIM_0*add_5_DATA_OUT_0_PARALLELISM_DIM_1*add_5_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             add_5_data_out_0_valid;
logic                             add_5_data_out_0_ready;
// --------------------------
//   encoder_layer_2_output_layer_norm signals
// --------------------------
logic [encoder_layer_2_output_layer_norm_DATA_IN_0_PRECISION_0-1:0]  encoder_layer_2_output_layer_norm_data_in_0        [encoder_layer_2_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0*encoder_layer_2_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1*encoder_layer_2_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_2_output_layer_norm_data_in_0_valid;
logic                             encoder_layer_2_output_layer_norm_data_in_0_ready;
logic [encoder_layer_2_output_layer_norm_DATA_OUT_0_PRECISION_0-1:0]  encoder_layer_2_output_layer_norm_data_out_0        [encoder_layer_2_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0*encoder_layer_2_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1*encoder_layer_2_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2-1:0];
logic                             encoder_layer_2_output_layer_norm_data_out_0_valid;
logic                             encoder_layer_2_output_layer_norm_data_out_0_ready;

// --------------------------
//   Component instantiation
// --------------------------

// df_split
df_split #(
    .DATA_IN_0_PRECISION_0(df_split_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(df_split_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(df_split_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(df_split_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(df_split_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(df_split_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(df_split_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(df_split_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(df_split_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(df_split_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(df_split_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(df_split_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(df_split_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(df_split_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(df_split_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(df_split_DATA_OUT_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_1_PRECISION_0(df_split_DATA_OUT_1_PRECISION_0), // = 8
    .DATA_OUT_1_PRECISION_1(df_split_DATA_OUT_1_PRECISION_1), // = 3
    .DATA_OUT_1_TENSOR_SIZE_DIM_0(df_split_DATA_OUT_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_1_PARALLELISM_DIM_0(df_split_DATA_OUT_1_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_1_TENSOR_SIZE_DIM_1(df_split_DATA_OUT_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_1_PARALLELISM_DIM_1(df_split_DATA_OUT_1_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_1_TENSOR_SIZE_DIM_2(df_split_DATA_OUT_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_1_PARALLELISM_DIM_2(df_split_DATA_OUT_1_PARALLELISM_DIM_2)
) df_split_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(df_split_data_in_0),
    .data_in_0_valid(df_split_data_in_0_valid),
    .data_in_0_ready(df_split_data_in_0_ready),
        
    .data_out_0(df_split_data_out_0),
    .data_out_0_valid(df_split_data_out_0_valid),
    .data_out_0_ready(df_split_data_out_0_ready),
        
    .data_out_1(df_split_data_out_1),
    .data_out_1_valid(df_split_data_out_1_valid),
    .data_out_1_ready(df_split_data_out_1_ready)
);

// getitem
buffer #(
    .DATA_IN_0_PRECISION_0(getitem_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(getitem_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(getitem_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(getitem_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(getitem_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(getitem_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(getitem_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(getitem_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .SELECT(getitem_SELECT), // = 0
    .DATA_OUT_0_PRECISION_0(getitem_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(getitem_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(getitem_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(getitem_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(getitem_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(getitem_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(getitem_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(getitem_DATA_OUT_0_PARALLELISM_DIM_2)
) getitem_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0       (getitem_data_in_0),
    .data_in_0_valid (getitem_data_in_0_valid),
    .data_in_0_ready (getitem_data_in_0_ready),
    
    .data_out_0       (getitem_data_out_0),
    .data_out_0_valid (getitem_data_out_0_valid),
    .data_out_0_ready (getitem_data_out_0_ready)
);

// getitem_1
buffer #(
    .DATA_IN_1_PRECISION_0(getitem_1_DATA_IN_1_PRECISION_0), // = 8
    .DATA_IN_1_PRECISION_1(getitem_1_DATA_IN_1_PRECISION_1), // = 3
    .DATA_IN_1_TENSOR_SIZE_DIM_0(getitem_1_DATA_IN_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_1_PARALLELISM_DIM_0(getitem_1_DATA_IN_1_PARALLELISM_DIM_0), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_1(getitem_1_DATA_IN_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_1_PARALLELISM_DIM_1(getitem_1_DATA_IN_1_PARALLELISM_DIM_1), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_2(getitem_1_DATA_IN_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_1_PARALLELISM_DIM_2(getitem_1_DATA_IN_1_PARALLELISM_DIM_2), // = 1
    .SELECT(getitem_1_SELECT), // = 1
    .DATA_OUT_0_PRECISION_0(getitem_1_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(getitem_1_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(getitem_1_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(getitem_1_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(getitem_1_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(getitem_1_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(getitem_1_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(getitem_1_DATA_OUT_0_PARALLELISM_DIM_2)
) getitem_1_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0       (getitem_1_data_in_0),
    .data_in_0_valid (getitem_1_data_in_0_valid),
    .data_in_0_ready (getitem_1_data_in_0_ready),
    
    .data_out_0       (getitem_1_data_out_0),
    .data_out_0_valid (getitem_1_data_out_0_valid),
    .data_out_0_ready (getitem_1_data_out_0_ready)
);

// encoder_layer_0_attention_self
fixed_self_attention_single_precision_wrapper #(
    .DATA_IN_0_PRECISION_0(encoder_layer_0_attention_self_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_0_attention_self_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_0_attention_self_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_0_attention_self_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_0_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_0_attention_self_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .OUTPUT_ATTENTIONS(encoder_layer_0_attention_self_OUTPUT_ATTENTIONS), // = 0
    .QUERY_WEIGHT_PRECISION_0(encoder_layer_0_attention_self_QUERY_WEIGHT_PRECISION_0), // = 8
    .QUERY_WEIGHT_PRECISION_1(encoder_layer_0_attention_self_QUERY_WEIGHT_PRECISION_1), // = 3
    .QUERY_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_0), // = 96
    .QUERY_WEIGHT_PARALLELISM_DIM_0(encoder_layer_0_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_0), // = 4
    .QUERY_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_1), // = 96
    .QUERY_WEIGHT_PARALLELISM_DIM_1(encoder_layer_0_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_1), // = 4
    .QUERY_BIAS_PRECISION_0(encoder_layer_0_attention_self_QUERY_BIAS_PRECISION_0), // = 8
    .QUERY_BIAS_PRECISION_1(encoder_layer_0_attention_self_QUERY_BIAS_PRECISION_1), // = 3
    .QUERY_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_0), // = 96
    .QUERY_BIAS_PARALLELISM_DIM_0(encoder_layer_0_attention_self_QUERY_BIAS_PARALLELISM_DIM_0), // = 4
    .QUERY_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .QUERY_BIAS_PARALLELISM_DIM_1(encoder_layer_0_attention_self_QUERY_BIAS_PARALLELISM_DIM_1), // = 1
    .KEY_WEIGHT_PRECISION_0(encoder_layer_0_attention_self_KEY_WEIGHT_PRECISION_0), // = 8
    .KEY_WEIGHT_PRECISION_1(encoder_layer_0_attention_self_KEY_WEIGHT_PRECISION_1), // = 3
    .KEY_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_0), // = 96
    .KEY_WEIGHT_PARALLELISM_DIM_0(encoder_layer_0_attention_self_KEY_WEIGHT_PARALLELISM_DIM_0), // = 4
    .KEY_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_1), // = 96
    .KEY_WEIGHT_PARALLELISM_DIM_1(encoder_layer_0_attention_self_KEY_WEIGHT_PARALLELISM_DIM_1), // = 4
    .KEY_BIAS_PRECISION_0(encoder_layer_0_attention_self_KEY_BIAS_PRECISION_0), // = 8
    .KEY_BIAS_PRECISION_1(encoder_layer_0_attention_self_KEY_BIAS_PRECISION_1), // = 3
    .KEY_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_0), // = 96
    .KEY_BIAS_PARALLELISM_DIM_0(encoder_layer_0_attention_self_KEY_BIAS_PARALLELISM_DIM_0), // = 4
    .KEY_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .KEY_BIAS_PARALLELISM_DIM_1(encoder_layer_0_attention_self_KEY_BIAS_PARALLELISM_DIM_1), // = 1
    .VALUE_WEIGHT_PRECISION_0(encoder_layer_0_attention_self_VALUE_WEIGHT_PRECISION_0), // = 8
    .VALUE_WEIGHT_PRECISION_1(encoder_layer_0_attention_self_VALUE_WEIGHT_PRECISION_1), // = 3
    .VALUE_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_0), // = 96
    .VALUE_WEIGHT_PARALLELISM_DIM_0(encoder_layer_0_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_0), // = 4
    .VALUE_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_1), // = 96
    .VALUE_WEIGHT_PARALLELISM_DIM_1(encoder_layer_0_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_1), // = 4
    .VALUE_BIAS_PRECISION_0(encoder_layer_0_attention_self_VALUE_BIAS_PRECISION_0), // = 8
    .VALUE_BIAS_PRECISION_1(encoder_layer_0_attention_self_VALUE_BIAS_PRECISION_1), // = 3
    .VALUE_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_0), // = 96
    .VALUE_BIAS_PARALLELISM_DIM_0(encoder_layer_0_attention_self_VALUE_BIAS_PARALLELISM_DIM_0), // = 4
    .VALUE_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .VALUE_BIAS_PARALLELISM_DIM_1(encoder_layer_0_attention_self_VALUE_BIAS_PARALLELISM_DIM_1), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_0_attention_self_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_0_attention_self_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_0_attention_self_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_0_attention_self_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_0_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_0_attention_self_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_0_attention_self_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_0_attention_self_data_in_0),
    .data_in_0_valid(encoder_layer_0_attention_self_data_in_0_valid),
    .data_in_0_ready(encoder_layer_0_attention_self_data_in_0_ready),
        
    .query_weight(encoder_layer_0_attention_self_query_weight),
    .query_weight_valid(encoder_layer_0_attention_self_query_weight_valid),
    .query_weight_ready(encoder_layer_0_attention_self_query_weight_ready),
        
    .query_bias(encoder_layer_0_attention_self_query_bias),
    .query_bias_valid(encoder_layer_0_attention_self_query_bias_valid),
    .query_bias_ready(encoder_layer_0_attention_self_query_bias_ready),
        
    .key_weight(encoder_layer_0_attention_self_key_weight),
    .key_weight_valid(encoder_layer_0_attention_self_key_weight_valid),
    .key_weight_ready(encoder_layer_0_attention_self_key_weight_ready),
        
    .key_bias(encoder_layer_0_attention_self_key_bias),
    .key_bias_valid(encoder_layer_0_attention_self_key_bias_valid),
    .key_bias_ready(encoder_layer_0_attention_self_key_bias_ready),
        
    .value_weight(encoder_layer_0_attention_self_value_weight),
    .value_weight_valid(encoder_layer_0_attention_self_value_weight_valid),
    .value_weight_ready(encoder_layer_0_attention_self_value_weight_ready),
        
    .value_bias(encoder_layer_0_attention_self_value_bias),
    .value_bias_valid(encoder_layer_0_attention_self_value_bias_valid),
    .value_bias_ready(encoder_layer_0_attention_self_value_bias_ready),
        
    .data_out_0(encoder_layer_0_attention_self_data_out_0),
    .data_out_0_valid(encoder_layer_0_attention_self_data_out_0_valid),
    .data_out_0_ready(encoder_layer_0_attention_self_data_out_0_ready)
);

encoder_layer_0_attention_self_query_weight_source #(
    .QUERY_WEIGHT_PRECISION_0(encoder_layer_0_attention_self_QUERY_WEIGHT_PRECISION_0),
    .QUERY_WEIGHT_PRECISION_1(encoder_layer_0_attention_self_QUERY_WEIGHT_PRECISION_1),
    .QUERY_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_0),
    .QUERY_WEIGHT_PARALLELISM_DIM_0(encoder_layer_0_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_0),
    .QUERY_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_1),
    .QUERY_WEIGHT_PARALLELISM_DIM_1(encoder_layer_0_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_0_attention_self_query_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_0_attention_self_query_weight),
    .data_out_ready(encoder_layer_0_attention_self_query_weight_ready),
    .data_out_valid(encoder_layer_0_attention_self_query_weight_valid)
);

encoder_layer_0_attention_self_query_bias_source #(
    .QUERY_BIAS_PRECISION_0(encoder_layer_0_attention_self_QUERY_BIAS_PRECISION_0),
    .QUERY_BIAS_PRECISION_1(encoder_layer_0_attention_self_QUERY_BIAS_PRECISION_1),
    .QUERY_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_0),
    .QUERY_BIAS_PARALLELISM_DIM_0(encoder_layer_0_attention_self_QUERY_BIAS_PARALLELISM_DIM_0),
    .QUERY_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_1),
    .QUERY_BIAS_PARALLELISM_DIM_1(encoder_layer_0_attention_self_QUERY_BIAS_PARALLELISM_DIM_1)
) encoder_layer_0_attention_self_query_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_0_attention_self_query_bias),
    .data_out_ready(encoder_layer_0_attention_self_query_bias_ready),
    .data_out_valid(encoder_layer_0_attention_self_query_bias_valid)
);

encoder_layer_0_attention_self_key_weight_source #(
    .KEY_WEIGHT_PRECISION_0(encoder_layer_0_attention_self_KEY_WEIGHT_PRECISION_0),
    .KEY_WEIGHT_PRECISION_1(encoder_layer_0_attention_self_KEY_WEIGHT_PRECISION_1),
    .KEY_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_0),
    .KEY_WEIGHT_PARALLELISM_DIM_0(encoder_layer_0_attention_self_KEY_WEIGHT_PARALLELISM_DIM_0),
    .KEY_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_1),
    .KEY_WEIGHT_PARALLELISM_DIM_1(encoder_layer_0_attention_self_KEY_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_0_attention_self_key_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_0_attention_self_key_weight),
    .data_out_ready(encoder_layer_0_attention_self_key_weight_ready),
    .data_out_valid(encoder_layer_0_attention_self_key_weight_valid)
);

encoder_layer_0_attention_self_key_bias_source #(
    .KEY_BIAS_PRECISION_0(encoder_layer_0_attention_self_KEY_BIAS_PRECISION_0),
    .KEY_BIAS_PRECISION_1(encoder_layer_0_attention_self_KEY_BIAS_PRECISION_1),
    .KEY_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_0),
    .KEY_BIAS_PARALLELISM_DIM_0(encoder_layer_0_attention_self_KEY_BIAS_PARALLELISM_DIM_0),
    .KEY_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_1),
    .KEY_BIAS_PARALLELISM_DIM_1(encoder_layer_0_attention_self_KEY_BIAS_PARALLELISM_DIM_1)
) encoder_layer_0_attention_self_key_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_0_attention_self_key_bias),
    .data_out_ready(encoder_layer_0_attention_self_key_bias_ready),
    .data_out_valid(encoder_layer_0_attention_self_key_bias_valid)
);

encoder_layer_0_attention_self_value_weight_source #(
    .VALUE_WEIGHT_PRECISION_0(encoder_layer_0_attention_self_VALUE_WEIGHT_PRECISION_0),
    .VALUE_WEIGHT_PRECISION_1(encoder_layer_0_attention_self_VALUE_WEIGHT_PRECISION_1),
    .VALUE_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_0),
    .VALUE_WEIGHT_PARALLELISM_DIM_0(encoder_layer_0_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_0),
    .VALUE_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_1),
    .VALUE_WEIGHT_PARALLELISM_DIM_1(encoder_layer_0_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_0_attention_self_value_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_0_attention_self_value_weight),
    .data_out_ready(encoder_layer_0_attention_self_value_weight_ready),
    .data_out_valid(encoder_layer_0_attention_self_value_weight_valid)
);

encoder_layer_0_attention_self_value_bias_source #(
    .VALUE_BIAS_PRECISION_0(encoder_layer_0_attention_self_VALUE_BIAS_PRECISION_0),
    .VALUE_BIAS_PRECISION_1(encoder_layer_0_attention_self_VALUE_BIAS_PRECISION_1),
    .VALUE_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_0),
    .VALUE_BIAS_PARALLELISM_DIM_0(encoder_layer_0_attention_self_VALUE_BIAS_PARALLELISM_DIM_0),
    .VALUE_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_1),
    .VALUE_BIAS_PARALLELISM_DIM_1(encoder_layer_0_attention_self_VALUE_BIAS_PARALLELISM_DIM_1)
) encoder_layer_0_attention_self_value_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_0_attention_self_value_bias),
    .data_out_ready(encoder_layer_0_attention_self_value_bias_ready),
    .data_out_valid(encoder_layer_0_attention_self_value_bias_valid)
);

// encoder_layer_0_attention_output_dense
fixed_linear #(
    .DATA_IN_0_PRECISION_0(encoder_layer_0_attention_output_dense_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_0_attention_output_dense_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_0_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_0_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_0_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_0_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .WEIGHT_PRECISION_0(encoder_layer_0_attention_output_dense_WEIGHT_PRECISION_0), // = 8
    .WEIGHT_PRECISION_1(encoder_layer_0_attention_output_dense_WEIGHT_PRECISION_1), // = 3
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_0), // = 96
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_0_attention_output_dense_WEIGHT_PARALLELISM_DIM_0), // = 4
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_1), // = 96
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_0_attention_output_dense_WEIGHT_PARALLELISM_DIM_1), // = 4
    .BIAS_PRECISION_0(encoder_layer_0_attention_output_dense_BIAS_PRECISION_0), // = 8
    .BIAS_PRECISION_1(encoder_layer_0_attention_output_dense_BIAS_PRECISION_1), // = 3
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_output_dense_BIAS_TENSOR_SIZE_DIM_0), // = 96
    .BIAS_PARALLELISM_DIM_0(encoder_layer_0_attention_output_dense_BIAS_PARALLELISM_DIM_0), // = 4
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_output_dense_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .BIAS_PARALLELISM_DIM_1(encoder_layer_0_attention_output_dense_BIAS_PARALLELISM_DIM_1), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_0_attention_output_dense_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_0_attention_output_dense_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_0_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_0_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_0_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_0_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_0_attention_output_dense_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_0_attention_output_dense_data_in_0),
    .data_in_0_valid(encoder_layer_0_attention_output_dense_data_in_0_valid),
    .data_in_0_ready(encoder_layer_0_attention_output_dense_data_in_0_ready),
        
    .weight(encoder_layer_0_attention_output_dense_weight),
    .weight_valid(encoder_layer_0_attention_output_dense_weight_valid),
    .weight_ready(encoder_layer_0_attention_output_dense_weight_ready),
        
    .bias(encoder_layer_0_attention_output_dense_bias),
    .bias_valid(encoder_layer_0_attention_output_dense_bias_valid),
    .bias_ready(encoder_layer_0_attention_output_dense_bias_ready),
        
    .data_out_0(encoder_layer_0_attention_output_dense_data_out_0),
    .data_out_0_valid(encoder_layer_0_attention_output_dense_data_out_0_valid),
    .data_out_0_ready(encoder_layer_0_attention_output_dense_data_out_0_ready)
);

encoder_layer_0_attention_output_dense_weight_source #(
    .WEIGHT_PRECISION_0(encoder_layer_0_attention_output_dense_WEIGHT_PRECISION_0),
    .WEIGHT_PRECISION_1(encoder_layer_0_attention_output_dense_WEIGHT_PRECISION_1),
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_0),
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_0_attention_output_dense_WEIGHT_PARALLELISM_DIM_0),
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_1),
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_0_attention_output_dense_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_0_attention_output_dense_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_0_attention_output_dense_weight),
    .data_out_ready(encoder_layer_0_attention_output_dense_weight_ready),
    .data_out_valid(encoder_layer_0_attention_output_dense_weight_valid)
);

encoder_layer_0_attention_output_dense_bias_source #(
    .BIAS_PRECISION_0(encoder_layer_0_attention_output_dense_BIAS_PRECISION_0),
    .BIAS_PRECISION_1(encoder_layer_0_attention_output_dense_BIAS_PRECISION_1),
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_output_dense_BIAS_TENSOR_SIZE_DIM_0),
    .BIAS_PARALLELISM_DIM_0(encoder_layer_0_attention_output_dense_BIAS_PARALLELISM_DIM_0),
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_output_dense_BIAS_TENSOR_SIZE_DIM_1),
    .BIAS_PARALLELISM_DIM_1(encoder_layer_0_attention_output_dense_BIAS_PARALLELISM_DIM_1)
) encoder_layer_0_attention_output_dense_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_0_attention_output_dense_bias),
    .data_out_ready(encoder_layer_0_attention_output_dense_bias_ready),
    .data_out_valid(encoder_layer_0_attention_output_dense_bias_valid)
);

// add
fixed_adder #(
    .DATA_IN_0_PRECISION_0(add_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(add_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(add_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(add_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(add_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(add_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(add_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(add_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_IN_1_PRECISION_0(add_DATA_IN_1_PRECISION_0), // = 8
    .DATA_IN_1_PRECISION_1(add_DATA_IN_1_PRECISION_1), // = 3
    .DATA_IN_1_TENSOR_SIZE_DIM_0(add_DATA_IN_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_1_PARALLELISM_DIM_0(add_DATA_IN_1_PARALLELISM_DIM_0), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_1(add_DATA_IN_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_1_PARALLELISM_DIM_1(add_DATA_IN_1_PARALLELISM_DIM_1), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_2(add_DATA_IN_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_1_PARALLELISM_DIM_2(add_DATA_IN_1_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(add_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(add_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(add_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(add_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(add_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(add_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(add_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(add_DATA_OUT_0_PARALLELISM_DIM_2)
) add_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(add_data_in_0),
    .data_in_0_valid(add_data_in_0_valid),
    .data_in_0_ready(add_data_in_0_ready),
        
    .data_in_1(add_data_in_1),
    .data_in_1_valid(add_data_in_1_valid),
    .data_in_1_ready(add_data_in_1_ready),
        
    .data_out_0(add_data_out_0),
    .data_out_0_valid(add_data_out_0_valid),
    .data_out_0_ready(add_data_out_0_ready)
);

// encoder_layer_0_attention_output_layer_norm
norm #(
    .DATA_IN_0_PRECISION_0(encoder_layer_0_attention_output_layer_norm_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_0_attention_output_layer_norm_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_0_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_0_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_0_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_0_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_0_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_0_attention_output_layer_norm_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_0_attention_output_layer_norm_data_in_0),
    .data_in_0_valid(encoder_layer_0_attention_output_layer_norm_data_in_0_valid),
    .data_in_0_ready(encoder_layer_0_attention_output_layer_norm_data_in_0_ready),
        
    .data_out_0(encoder_layer_0_attention_output_layer_norm_data_out_0),
    .data_out_0_valid(encoder_layer_0_attention_output_layer_norm_data_out_0_valid),
    .data_out_0_ready(encoder_layer_0_attention_output_layer_norm_data_out_0_ready)
);

// df_split_1
df_split #(
    .DATA_IN_0_PRECISION_0(df_split_1_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(df_split_1_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(df_split_1_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(df_split_1_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(df_split_1_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(df_split_1_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(df_split_1_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(df_split_1_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(df_split_1_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(df_split_1_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(df_split_1_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(df_split_1_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(df_split_1_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(df_split_1_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(df_split_1_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(df_split_1_DATA_OUT_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_1_PRECISION_0(df_split_1_DATA_OUT_1_PRECISION_0), // = 8
    .DATA_OUT_1_PRECISION_1(df_split_1_DATA_OUT_1_PRECISION_1), // = 3
    .DATA_OUT_1_TENSOR_SIZE_DIM_0(df_split_1_DATA_OUT_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_1_PARALLELISM_DIM_0(df_split_1_DATA_OUT_1_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_1_TENSOR_SIZE_DIM_1(df_split_1_DATA_OUT_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_1_PARALLELISM_DIM_1(df_split_1_DATA_OUT_1_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_1_TENSOR_SIZE_DIM_2(df_split_1_DATA_OUT_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_1_PARALLELISM_DIM_2(df_split_1_DATA_OUT_1_PARALLELISM_DIM_2)
) df_split_1_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(df_split_1_data_in_0),
    .data_in_0_valid(df_split_1_data_in_0_valid),
    .data_in_0_ready(df_split_1_data_in_0_ready),
        
    .data_out_0(df_split_1_data_out_0),
    .data_out_0_valid(df_split_1_data_out_0_valid),
    .data_out_0_ready(df_split_1_data_out_0_ready),
        
    .data_out_1(df_split_1_data_out_1),
    .data_out_1_valid(df_split_1_data_out_1_valid),
    .data_out_1_ready(df_split_1_data_out_1_ready)
);

// getitem_2
buffer #(
    .DATA_IN_0_PRECISION_0(getitem_2_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(getitem_2_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(getitem_2_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(getitem_2_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(getitem_2_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(getitem_2_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(getitem_2_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(getitem_2_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .SELECT(getitem_2_SELECT), // = 0
    .DATA_OUT_0_PRECISION_0(getitem_2_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(getitem_2_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(getitem_2_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(getitem_2_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(getitem_2_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(getitem_2_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(getitem_2_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(getitem_2_DATA_OUT_0_PARALLELISM_DIM_2)
) getitem_2_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0       (getitem_2_data_in_0),
    .data_in_0_valid (getitem_2_data_in_0_valid),
    .data_in_0_ready (getitem_2_data_in_0_ready),
    
    .data_out_0       (getitem_2_data_out_0),
    .data_out_0_valid (getitem_2_data_out_0_valid),
    .data_out_0_ready (getitem_2_data_out_0_ready)
);

// getitem_3
buffer #(
    .DATA_IN_1_PRECISION_0(getitem_3_DATA_IN_1_PRECISION_0), // = 8
    .DATA_IN_1_PRECISION_1(getitem_3_DATA_IN_1_PRECISION_1), // = 3
    .DATA_IN_1_TENSOR_SIZE_DIM_0(getitem_3_DATA_IN_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_1_PARALLELISM_DIM_0(getitem_3_DATA_IN_1_PARALLELISM_DIM_0), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_1(getitem_3_DATA_IN_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_1_PARALLELISM_DIM_1(getitem_3_DATA_IN_1_PARALLELISM_DIM_1), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_2(getitem_3_DATA_IN_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_1_PARALLELISM_DIM_2(getitem_3_DATA_IN_1_PARALLELISM_DIM_2), // = 1
    .SELECT(getitem_3_SELECT), // = 1
    .DATA_OUT_0_PRECISION_0(getitem_3_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(getitem_3_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(getitem_3_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(getitem_3_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(getitem_3_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(getitem_3_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(getitem_3_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(getitem_3_DATA_OUT_0_PARALLELISM_DIM_2)
) getitem_3_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0       (getitem_3_data_in_0),
    .data_in_0_valid (getitem_3_data_in_0_valid),
    .data_in_0_ready (getitem_3_data_in_0_ready),
    
    .data_out_0       (getitem_3_data_out_0),
    .data_out_0_valid (getitem_3_data_out_0_valid),
    .data_out_0_ready (getitem_3_data_out_0_ready)
);

// encoder_layer_0_intermediate_dense
fixed_linear #(
    .DATA_IN_0_PRECISION_0(encoder_layer_0_intermediate_dense_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_0_intermediate_dense_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_0_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_0_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_0_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_0_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_0_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_0_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .WEIGHT_PRECISION_0(encoder_layer_0_intermediate_dense_WEIGHT_PRECISION_0), // = 8
    .WEIGHT_PRECISION_1(encoder_layer_0_intermediate_dense_WEIGHT_PRECISION_1), // = 3
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_0_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_0), // = 96
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_0_intermediate_dense_WEIGHT_PARALLELISM_DIM_0), // = 4
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_0_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_1), // = 384
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_0_intermediate_dense_WEIGHT_PARALLELISM_DIM_1), // = 4
    .BIAS_PRECISION_0(encoder_layer_0_intermediate_dense_BIAS_PRECISION_0), // = 8
    .BIAS_PRECISION_1(encoder_layer_0_intermediate_dense_BIAS_PRECISION_1), // = 3
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_0_intermediate_dense_BIAS_TENSOR_SIZE_DIM_0), // = 384
    .BIAS_PARALLELISM_DIM_0(encoder_layer_0_intermediate_dense_BIAS_PARALLELISM_DIM_0), // = 4
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_0_intermediate_dense_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .BIAS_PARALLELISM_DIM_1(encoder_layer_0_intermediate_dense_BIAS_PARALLELISM_DIM_1), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_0_intermediate_dense_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_0_intermediate_dense_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_0_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 384
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_0_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_0_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_0_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_0_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_0_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_0_intermediate_dense_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_0_intermediate_dense_data_in_0),
    .data_in_0_valid(encoder_layer_0_intermediate_dense_data_in_0_valid),
    .data_in_0_ready(encoder_layer_0_intermediate_dense_data_in_0_ready),
        
    .weight(encoder_layer_0_intermediate_dense_weight),
    .weight_valid(encoder_layer_0_intermediate_dense_weight_valid),
    .weight_ready(encoder_layer_0_intermediate_dense_weight_ready),
        
    .bias(encoder_layer_0_intermediate_dense_bias),
    .bias_valid(encoder_layer_0_intermediate_dense_bias_valid),
    .bias_ready(encoder_layer_0_intermediate_dense_bias_ready),
        
    .data_out_0(encoder_layer_0_intermediate_dense_data_out_0),
    .data_out_0_valid(encoder_layer_0_intermediate_dense_data_out_0_valid),
    .data_out_0_ready(encoder_layer_0_intermediate_dense_data_out_0_ready)
);

encoder_layer_0_intermediate_dense_weight_source #(
    .WEIGHT_PRECISION_0(encoder_layer_0_intermediate_dense_WEIGHT_PRECISION_0),
    .WEIGHT_PRECISION_1(encoder_layer_0_intermediate_dense_WEIGHT_PRECISION_1),
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_0_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_0),
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_0_intermediate_dense_WEIGHT_PARALLELISM_DIM_0),
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_0_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_1),
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_0_intermediate_dense_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_0_intermediate_dense_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_0_intermediate_dense_weight),
    .data_out_ready(encoder_layer_0_intermediate_dense_weight_ready),
    .data_out_valid(encoder_layer_0_intermediate_dense_weight_valid)
);

encoder_layer_0_intermediate_dense_bias_source #(
    .BIAS_PRECISION_0(encoder_layer_0_intermediate_dense_BIAS_PRECISION_0),
    .BIAS_PRECISION_1(encoder_layer_0_intermediate_dense_BIAS_PRECISION_1),
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_0_intermediate_dense_BIAS_TENSOR_SIZE_DIM_0),
    .BIAS_PARALLELISM_DIM_0(encoder_layer_0_intermediate_dense_BIAS_PARALLELISM_DIM_0),
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_0_intermediate_dense_BIAS_TENSOR_SIZE_DIM_1),
    .BIAS_PARALLELISM_DIM_1(encoder_layer_0_intermediate_dense_BIAS_PARALLELISM_DIM_1)
) encoder_layer_0_intermediate_dense_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_0_intermediate_dense_bias),
    .data_out_ready(encoder_layer_0_intermediate_dense_bias_ready),
    .data_out_valid(encoder_layer_0_intermediate_dense_bias_valid)
);

// encoder_layer_0_intermediate_intermediate_act_fn
fixed_gelu #(
    .DATA_IN_0_PRECISION_0(encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 384
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_0_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 384
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_0_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_0_intermediate_intermediate_act_fn_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_0_intermediate_intermediate_act_fn_data_in_0),
    .data_in_0_valid(encoder_layer_0_intermediate_intermediate_act_fn_data_in_0_valid),
    .data_in_0_ready(encoder_layer_0_intermediate_intermediate_act_fn_data_in_0_ready),
        
    .data_out_0(encoder_layer_0_intermediate_intermediate_act_fn_data_out_0),
    .data_out_0_valid(encoder_layer_0_intermediate_intermediate_act_fn_data_out_0_valid),
    .data_out_0_ready(encoder_layer_0_intermediate_intermediate_act_fn_data_out_0_ready)
);

// encoder_layer_0_output_dense
fixed_linear #(
    .DATA_IN_0_PRECISION_0(encoder_layer_0_output_dense_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_0_output_dense_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_0_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 384
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_0_output_dense_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_0_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_0_output_dense_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_0_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_0_output_dense_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .WEIGHT_PRECISION_0(encoder_layer_0_output_dense_WEIGHT_PRECISION_0), // = 8
    .WEIGHT_PRECISION_1(encoder_layer_0_output_dense_WEIGHT_PRECISION_1), // = 3
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_0_output_dense_WEIGHT_TENSOR_SIZE_DIM_0), // = 384
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_0_output_dense_WEIGHT_PARALLELISM_DIM_0), // = 4
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_0_output_dense_WEIGHT_TENSOR_SIZE_DIM_1), // = 96
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_0_output_dense_WEIGHT_PARALLELISM_DIM_1), // = 4
    .BIAS_PRECISION_0(encoder_layer_0_output_dense_BIAS_PRECISION_0), // = 8
    .BIAS_PRECISION_1(encoder_layer_0_output_dense_BIAS_PRECISION_1), // = 3
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_0_output_dense_BIAS_TENSOR_SIZE_DIM_0), // = 96
    .BIAS_PARALLELISM_DIM_0(encoder_layer_0_output_dense_BIAS_PARALLELISM_DIM_0), // = 4
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_0_output_dense_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .BIAS_PARALLELISM_DIM_1(encoder_layer_0_output_dense_BIAS_PARALLELISM_DIM_1), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_0_output_dense_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_0_output_dense_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_0_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_0_output_dense_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_0_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_0_output_dense_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_0_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_0_output_dense_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_0_output_dense_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_0_output_dense_data_in_0),
    .data_in_0_valid(encoder_layer_0_output_dense_data_in_0_valid),
    .data_in_0_ready(encoder_layer_0_output_dense_data_in_0_ready),
        
    .weight(encoder_layer_0_output_dense_weight),
    .weight_valid(encoder_layer_0_output_dense_weight_valid),
    .weight_ready(encoder_layer_0_output_dense_weight_ready),
        
    .bias(encoder_layer_0_output_dense_bias),
    .bias_valid(encoder_layer_0_output_dense_bias_valid),
    .bias_ready(encoder_layer_0_output_dense_bias_ready),
        
    .data_out_0(encoder_layer_0_output_dense_data_out_0),
    .data_out_0_valid(encoder_layer_0_output_dense_data_out_0_valid),
    .data_out_0_ready(encoder_layer_0_output_dense_data_out_0_ready)
);

encoder_layer_0_output_dense_weight_source #(
    .WEIGHT_PRECISION_0(encoder_layer_0_output_dense_WEIGHT_PRECISION_0),
    .WEIGHT_PRECISION_1(encoder_layer_0_output_dense_WEIGHT_PRECISION_1),
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_0_output_dense_WEIGHT_TENSOR_SIZE_DIM_0),
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_0_output_dense_WEIGHT_PARALLELISM_DIM_0),
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_0_output_dense_WEIGHT_TENSOR_SIZE_DIM_1),
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_0_output_dense_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_0_output_dense_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_0_output_dense_weight),
    .data_out_ready(encoder_layer_0_output_dense_weight_ready),
    .data_out_valid(encoder_layer_0_output_dense_weight_valid)
);

encoder_layer_0_output_dense_bias_source #(
    .BIAS_PRECISION_0(encoder_layer_0_output_dense_BIAS_PRECISION_0),
    .BIAS_PRECISION_1(encoder_layer_0_output_dense_BIAS_PRECISION_1),
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_0_output_dense_BIAS_TENSOR_SIZE_DIM_0),
    .BIAS_PARALLELISM_DIM_0(encoder_layer_0_output_dense_BIAS_PARALLELISM_DIM_0),
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_0_output_dense_BIAS_TENSOR_SIZE_DIM_1),
    .BIAS_PARALLELISM_DIM_1(encoder_layer_0_output_dense_BIAS_PARALLELISM_DIM_1)
) encoder_layer_0_output_dense_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_0_output_dense_bias),
    .data_out_ready(encoder_layer_0_output_dense_bias_ready),
    .data_out_valid(encoder_layer_0_output_dense_bias_valid)
);

// add_1
fixed_adder #(
    .DATA_IN_0_PRECISION_0(add_1_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(add_1_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(add_1_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(add_1_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(add_1_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(add_1_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(add_1_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(add_1_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_IN_1_PRECISION_0(add_1_DATA_IN_1_PRECISION_0), // = 8
    .DATA_IN_1_PRECISION_1(add_1_DATA_IN_1_PRECISION_1), // = 3
    .DATA_IN_1_TENSOR_SIZE_DIM_0(add_1_DATA_IN_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_1_PARALLELISM_DIM_0(add_1_DATA_IN_1_PARALLELISM_DIM_0), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_1(add_1_DATA_IN_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_1_PARALLELISM_DIM_1(add_1_DATA_IN_1_PARALLELISM_DIM_1), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_2(add_1_DATA_IN_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_1_PARALLELISM_DIM_2(add_1_DATA_IN_1_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(add_1_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(add_1_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(add_1_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(add_1_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(add_1_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(add_1_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(add_1_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(add_1_DATA_OUT_0_PARALLELISM_DIM_2)
) add_1_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(add_1_data_in_0),
    .data_in_0_valid(add_1_data_in_0_valid),
    .data_in_0_ready(add_1_data_in_0_ready),
        
    .data_in_1(add_1_data_in_1),
    .data_in_1_valid(add_1_data_in_1_valid),
    .data_in_1_ready(add_1_data_in_1_ready),
        
    .data_out_0(add_1_data_out_0),
    .data_out_0_valid(add_1_data_out_0_valid),
    .data_out_0_ready(add_1_data_out_0_ready)
);

// encoder_layer_0_output_layer_norm
norm #(
    .DATA_IN_0_PRECISION_0(encoder_layer_0_output_layer_norm_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_0_output_layer_norm_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_0_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_0_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_0_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_0_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_0_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_0_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_0_output_layer_norm_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_0_output_layer_norm_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_0_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_0_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_0_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_0_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_0_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_0_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_0_output_layer_norm_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_0_output_layer_norm_data_in_0),
    .data_in_0_valid(encoder_layer_0_output_layer_norm_data_in_0_valid),
    .data_in_0_ready(encoder_layer_0_output_layer_norm_data_in_0_ready),
        
    .data_out_0(encoder_layer_0_output_layer_norm_data_out_0),
    .data_out_0_valid(encoder_layer_0_output_layer_norm_data_out_0_valid),
    .data_out_0_ready(encoder_layer_0_output_layer_norm_data_out_0_ready)
);

// df_split_2
df_split #(
    .DATA_IN_0_PRECISION_0(df_split_2_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(df_split_2_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(df_split_2_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(df_split_2_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(df_split_2_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(df_split_2_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(df_split_2_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(df_split_2_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(df_split_2_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(df_split_2_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(df_split_2_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(df_split_2_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(df_split_2_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(df_split_2_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(df_split_2_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(df_split_2_DATA_OUT_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_1_PRECISION_0(df_split_2_DATA_OUT_1_PRECISION_0), // = 8
    .DATA_OUT_1_PRECISION_1(df_split_2_DATA_OUT_1_PRECISION_1), // = 3
    .DATA_OUT_1_TENSOR_SIZE_DIM_0(df_split_2_DATA_OUT_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_1_PARALLELISM_DIM_0(df_split_2_DATA_OUT_1_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_1_TENSOR_SIZE_DIM_1(df_split_2_DATA_OUT_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_1_PARALLELISM_DIM_1(df_split_2_DATA_OUT_1_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_1_TENSOR_SIZE_DIM_2(df_split_2_DATA_OUT_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_1_PARALLELISM_DIM_2(df_split_2_DATA_OUT_1_PARALLELISM_DIM_2)
) df_split_2_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(df_split_2_data_in_0),
    .data_in_0_valid(df_split_2_data_in_0_valid),
    .data_in_0_ready(df_split_2_data_in_0_ready),
        
    .data_out_0(df_split_2_data_out_0),
    .data_out_0_valid(df_split_2_data_out_0_valid),
    .data_out_0_ready(df_split_2_data_out_0_ready),
        
    .data_out_1(df_split_2_data_out_1),
    .data_out_1_valid(df_split_2_data_out_1_valid),
    .data_out_1_ready(df_split_2_data_out_1_ready)
);

// getitem_4
buffer #(
    .DATA_IN_0_PRECISION_0(getitem_4_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(getitem_4_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(getitem_4_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(getitem_4_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(getitem_4_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(getitem_4_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(getitem_4_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(getitem_4_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .SELECT(getitem_4_SELECT), // = 0
    .DATA_OUT_0_PRECISION_0(getitem_4_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(getitem_4_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(getitem_4_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(getitem_4_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(getitem_4_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(getitem_4_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(getitem_4_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(getitem_4_DATA_OUT_0_PARALLELISM_DIM_2)
) getitem_4_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0       (getitem_4_data_in_0),
    .data_in_0_valid (getitem_4_data_in_0_valid),
    .data_in_0_ready (getitem_4_data_in_0_ready),
    
    .data_out_0       (getitem_4_data_out_0),
    .data_out_0_valid (getitem_4_data_out_0_valid),
    .data_out_0_ready (getitem_4_data_out_0_ready)
);

// getitem_5
buffer #(
    .DATA_IN_1_PRECISION_0(getitem_5_DATA_IN_1_PRECISION_0), // = 8
    .DATA_IN_1_PRECISION_1(getitem_5_DATA_IN_1_PRECISION_1), // = 3
    .DATA_IN_1_TENSOR_SIZE_DIM_0(getitem_5_DATA_IN_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_1_PARALLELISM_DIM_0(getitem_5_DATA_IN_1_PARALLELISM_DIM_0), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_1(getitem_5_DATA_IN_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_1_PARALLELISM_DIM_1(getitem_5_DATA_IN_1_PARALLELISM_DIM_1), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_2(getitem_5_DATA_IN_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_1_PARALLELISM_DIM_2(getitem_5_DATA_IN_1_PARALLELISM_DIM_2), // = 1
    .SELECT(getitem_5_SELECT), // = 1
    .DATA_OUT_0_PRECISION_0(getitem_5_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(getitem_5_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(getitem_5_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(getitem_5_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(getitem_5_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(getitem_5_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(getitem_5_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(getitem_5_DATA_OUT_0_PARALLELISM_DIM_2)
) getitem_5_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0       (getitem_5_data_in_0),
    .data_in_0_valid (getitem_5_data_in_0_valid),
    .data_in_0_ready (getitem_5_data_in_0_ready),
    
    .data_out_0       (getitem_5_data_out_0),
    .data_out_0_valid (getitem_5_data_out_0_valid),
    .data_out_0_ready (getitem_5_data_out_0_ready)
);

// encoder_layer_1_attention_self
fixed_self_attention_single_precision_wrapper #(
    .DATA_IN_0_PRECISION_0(encoder_layer_1_attention_self_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_1_attention_self_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_1_attention_self_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_1_attention_self_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_1_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_1_attention_self_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .OUTPUT_ATTENTIONS(encoder_layer_1_attention_self_OUTPUT_ATTENTIONS), // = 0
    .QUERY_WEIGHT_PRECISION_0(encoder_layer_1_attention_self_QUERY_WEIGHT_PRECISION_0), // = 8
    .QUERY_WEIGHT_PRECISION_1(encoder_layer_1_attention_self_QUERY_WEIGHT_PRECISION_1), // = 3
    .QUERY_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_0), // = 96
    .QUERY_WEIGHT_PARALLELISM_DIM_0(encoder_layer_1_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_0), // = 4
    .QUERY_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_1), // = 96
    .QUERY_WEIGHT_PARALLELISM_DIM_1(encoder_layer_1_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_1), // = 4
    .QUERY_BIAS_PRECISION_0(encoder_layer_1_attention_self_QUERY_BIAS_PRECISION_0), // = 8
    .QUERY_BIAS_PRECISION_1(encoder_layer_1_attention_self_QUERY_BIAS_PRECISION_1), // = 3
    .QUERY_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_0), // = 96
    .QUERY_BIAS_PARALLELISM_DIM_0(encoder_layer_1_attention_self_QUERY_BIAS_PARALLELISM_DIM_0), // = 4
    .QUERY_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .QUERY_BIAS_PARALLELISM_DIM_1(encoder_layer_1_attention_self_QUERY_BIAS_PARALLELISM_DIM_1), // = 1
    .KEY_WEIGHT_PRECISION_0(encoder_layer_1_attention_self_KEY_WEIGHT_PRECISION_0), // = 8
    .KEY_WEIGHT_PRECISION_1(encoder_layer_1_attention_self_KEY_WEIGHT_PRECISION_1), // = 3
    .KEY_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_0), // = 96
    .KEY_WEIGHT_PARALLELISM_DIM_0(encoder_layer_1_attention_self_KEY_WEIGHT_PARALLELISM_DIM_0), // = 4
    .KEY_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_1), // = 96
    .KEY_WEIGHT_PARALLELISM_DIM_1(encoder_layer_1_attention_self_KEY_WEIGHT_PARALLELISM_DIM_1), // = 4
    .KEY_BIAS_PRECISION_0(encoder_layer_1_attention_self_KEY_BIAS_PRECISION_0), // = 8
    .KEY_BIAS_PRECISION_1(encoder_layer_1_attention_self_KEY_BIAS_PRECISION_1), // = 3
    .KEY_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_0), // = 96
    .KEY_BIAS_PARALLELISM_DIM_0(encoder_layer_1_attention_self_KEY_BIAS_PARALLELISM_DIM_0), // = 4
    .KEY_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .KEY_BIAS_PARALLELISM_DIM_1(encoder_layer_1_attention_self_KEY_BIAS_PARALLELISM_DIM_1), // = 1
    .VALUE_WEIGHT_PRECISION_0(encoder_layer_1_attention_self_VALUE_WEIGHT_PRECISION_0), // = 8
    .VALUE_WEIGHT_PRECISION_1(encoder_layer_1_attention_self_VALUE_WEIGHT_PRECISION_1), // = 3
    .VALUE_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_0), // = 96
    .VALUE_WEIGHT_PARALLELISM_DIM_0(encoder_layer_1_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_0), // = 4
    .VALUE_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_1), // = 96
    .VALUE_WEIGHT_PARALLELISM_DIM_1(encoder_layer_1_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_1), // = 4
    .VALUE_BIAS_PRECISION_0(encoder_layer_1_attention_self_VALUE_BIAS_PRECISION_0), // = 8
    .VALUE_BIAS_PRECISION_1(encoder_layer_1_attention_self_VALUE_BIAS_PRECISION_1), // = 3
    .VALUE_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_0), // = 96
    .VALUE_BIAS_PARALLELISM_DIM_0(encoder_layer_1_attention_self_VALUE_BIAS_PARALLELISM_DIM_0), // = 4
    .VALUE_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .VALUE_BIAS_PARALLELISM_DIM_1(encoder_layer_1_attention_self_VALUE_BIAS_PARALLELISM_DIM_1), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_1_attention_self_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_1_attention_self_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_1_attention_self_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_1_attention_self_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_1_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_1_attention_self_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_1_attention_self_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_1_attention_self_data_in_0),
    .data_in_0_valid(encoder_layer_1_attention_self_data_in_0_valid),
    .data_in_0_ready(encoder_layer_1_attention_self_data_in_0_ready),
        
    .query_weight(encoder_layer_1_attention_self_query_weight),
    .query_weight_valid(encoder_layer_1_attention_self_query_weight_valid),
    .query_weight_ready(encoder_layer_1_attention_self_query_weight_ready),
        
    .query_bias(encoder_layer_1_attention_self_query_bias),
    .query_bias_valid(encoder_layer_1_attention_self_query_bias_valid),
    .query_bias_ready(encoder_layer_1_attention_self_query_bias_ready),
        
    .key_weight(encoder_layer_1_attention_self_key_weight),
    .key_weight_valid(encoder_layer_1_attention_self_key_weight_valid),
    .key_weight_ready(encoder_layer_1_attention_self_key_weight_ready),
        
    .key_bias(encoder_layer_1_attention_self_key_bias),
    .key_bias_valid(encoder_layer_1_attention_self_key_bias_valid),
    .key_bias_ready(encoder_layer_1_attention_self_key_bias_ready),
        
    .value_weight(encoder_layer_1_attention_self_value_weight),
    .value_weight_valid(encoder_layer_1_attention_self_value_weight_valid),
    .value_weight_ready(encoder_layer_1_attention_self_value_weight_ready),
        
    .value_bias(encoder_layer_1_attention_self_value_bias),
    .value_bias_valid(encoder_layer_1_attention_self_value_bias_valid),
    .value_bias_ready(encoder_layer_1_attention_self_value_bias_ready),
        
    .data_out_0(encoder_layer_1_attention_self_data_out_0),
    .data_out_0_valid(encoder_layer_1_attention_self_data_out_0_valid),
    .data_out_0_ready(encoder_layer_1_attention_self_data_out_0_ready)
);

encoder_layer_1_attention_self_query_weight_source #(
    .QUERY_WEIGHT_PRECISION_0(encoder_layer_1_attention_self_QUERY_WEIGHT_PRECISION_0),
    .QUERY_WEIGHT_PRECISION_1(encoder_layer_1_attention_self_QUERY_WEIGHT_PRECISION_1),
    .QUERY_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_0),
    .QUERY_WEIGHT_PARALLELISM_DIM_0(encoder_layer_1_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_0),
    .QUERY_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_1),
    .QUERY_WEIGHT_PARALLELISM_DIM_1(encoder_layer_1_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_1_attention_self_query_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_1_attention_self_query_weight),
    .data_out_ready(encoder_layer_1_attention_self_query_weight_ready),
    .data_out_valid(encoder_layer_1_attention_self_query_weight_valid)
);

encoder_layer_1_attention_self_query_bias_source #(
    .QUERY_BIAS_PRECISION_0(encoder_layer_1_attention_self_QUERY_BIAS_PRECISION_0),
    .QUERY_BIAS_PRECISION_1(encoder_layer_1_attention_self_QUERY_BIAS_PRECISION_1),
    .QUERY_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_0),
    .QUERY_BIAS_PARALLELISM_DIM_0(encoder_layer_1_attention_self_QUERY_BIAS_PARALLELISM_DIM_0),
    .QUERY_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_1),
    .QUERY_BIAS_PARALLELISM_DIM_1(encoder_layer_1_attention_self_QUERY_BIAS_PARALLELISM_DIM_1)
) encoder_layer_1_attention_self_query_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_1_attention_self_query_bias),
    .data_out_ready(encoder_layer_1_attention_self_query_bias_ready),
    .data_out_valid(encoder_layer_1_attention_self_query_bias_valid)
);

encoder_layer_1_attention_self_key_weight_source #(
    .KEY_WEIGHT_PRECISION_0(encoder_layer_1_attention_self_KEY_WEIGHT_PRECISION_0),
    .KEY_WEIGHT_PRECISION_1(encoder_layer_1_attention_self_KEY_WEIGHT_PRECISION_1),
    .KEY_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_0),
    .KEY_WEIGHT_PARALLELISM_DIM_0(encoder_layer_1_attention_self_KEY_WEIGHT_PARALLELISM_DIM_0),
    .KEY_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_1),
    .KEY_WEIGHT_PARALLELISM_DIM_1(encoder_layer_1_attention_self_KEY_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_1_attention_self_key_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_1_attention_self_key_weight),
    .data_out_ready(encoder_layer_1_attention_self_key_weight_ready),
    .data_out_valid(encoder_layer_1_attention_self_key_weight_valid)
);

encoder_layer_1_attention_self_key_bias_source #(
    .KEY_BIAS_PRECISION_0(encoder_layer_1_attention_self_KEY_BIAS_PRECISION_0),
    .KEY_BIAS_PRECISION_1(encoder_layer_1_attention_self_KEY_BIAS_PRECISION_1),
    .KEY_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_0),
    .KEY_BIAS_PARALLELISM_DIM_0(encoder_layer_1_attention_self_KEY_BIAS_PARALLELISM_DIM_0),
    .KEY_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_1),
    .KEY_BIAS_PARALLELISM_DIM_1(encoder_layer_1_attention_self_KEY_BIAS_PARALLELISM_DIM_1)
) encoder_layer_1_attention_self_key_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_1_attention_self_key_bias),
    .data_out_ready(encoder_layer_1_attention_self_key_bias_ready),
    .data_out_valid(encoder_layer_1_attention_self_key_bias_valid)
);

encoder_layer_1_attention_self_value_weight_source #(
    .VALUE_WEIGHT_PRECISION_0(encoder_layer_1_attention_self_VALUE_WEIGHT_PRECISION_0),
    .VALUE_WEIGHT_PRECISION_1(encoder_layer_1_attention_self_VALUE_WEIGHT_PRECISION_1),
    .VALUE_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_0),
    .VALUE_WEIGHT_PARALLELISM_DIM_0(encoder_layer_1_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_0),
    .VALUE_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_1),
    .VALUE_WEIGHT_PARALLELISM_DIM_1(encoder_layer_1_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_1_attention_self_value_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_1_attention_self_value_weight),
    .data_out_ready(encoder_layer_1_attention_self_value_weight_ready),
    .data_out_valid(encoder_layer_1_attention_self_value_weight_valid)
);

encoder_layer_1_attention_self_value_bias_source #(
    .VALUE_BIAS_PRECISION_0(encoder_layer_1_attention_self_VALUE_BIAS_PRECISION_0),
    .VALUE_BIAS_PRECISION_1(encoder_layer_1_attention_self_VALUE_BIAS_PRECISION_1),
    .VALUE_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_0),
    .VALUE_BIAS_PARALLELISM_DIM_0(encoder_layer_1_attention_self_VALUE_BIAS_PARALLELISM_DIM_0),
    .VALUE_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_1),
    .VALUE_BIAS_PARALLELISM_DIM_1(encoder_layer_1_attention_self_VALUE_BIAS_PARALLELISM_DIM_1)
) encoder_layer_1_attention_self_value_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_1_attention_self_value_bias),
    .data_out_ready(encoder_layer_1_attention_self_value_bias_ready),
    .data_out_valid(encoder_layer_1_attention_self_value_bias_valid)
);

// encoder_layer_1_attention_output_dense
fixed_linear #(
    .DATA_IN_0_PRECISION_0(encoder_layer_1_attention_output_dense_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_1_attention_output_dense_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_1_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_1_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_1_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_1_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .WEIGHT_PRECISION_0(encoder_layer_1_attention_output_dense_WEIGHT_PRECISION_0), // = 8
    .WEIGHT_PRECISION_1(encoder_layer_1_attention_output_dense_WEIGHT_PRECISION_1), // = 3
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_0), // = 96
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_1_attention_output_dense_WEIGHT_PARALLELISM_DIM_0), // = 4
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_1), // = 96
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_1_attention_output_dense_WEIGHT_PARALLELISM_DIM_1), // = 4
    .BIAS_PRECISION_0(encoder_layer_1_attention_output_dense_BIAS_PRECISION_0), // = 8
    .BIAS_PRECISION_1(encoder_layer_1_attention_output_dense_BIAS_PRECISION_1), // = 3
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_output_dense_BIAS_TENSOR_SIZE_DIM_0), // = 96
    .BIAS_PARALLELISM_DIM_0(encoder_layer_1_attention_output_dense_BIAS_PARALLELISM_DIM_0), // = 4
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_output_dense_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .BIAS_PARALLELISM_DIM_1(encoder_layer_1_attention_output_dense_BIAS_PARALLELISM_DIM_1), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_1_attention_output_dense_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_1_attention_output_dense_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_1_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_1_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_1_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_1_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_1_attention_output_dense_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_1_attention_output_dense_data_in_0),
    .data_in_0_valid(encoder_layer_1_attention_output_dense_data_in_0_valid),
    .data_in_0_ready(encoder_layer_1_attention_output_dense_data_in_0_ready),
        
    .weight(encoder_layer_1_attention_output_dense_weight),
    .weight_valid(encoder_layer_1_attention_output_dense_weight_valid),
    .weight_ready(encoder_layer_1_attention_output_dense_weight_ready),
        
    .bias(encoder_layer_1_attention_output_dense_bias),
    .bias_valid(encoder_layer_1_attention_output_dense_bias_valid),
    .bias_ready(encoder_layer_1_attention_output_dense_bias_ready),
        
    .data_out_0(encoder_layer_1_attention_output_dense_data_out_0),
    .data_out_0_valid(encoder_layer_1_attention_output_dense_data_out_0_valid),
    .data_out_0_ready(encoder_layer_1_attention_output_dense_data_out_0_ready)
);

encoder_layer_1_attention_output_dense_weight_source #(
    .WEIGHT_PRECISION_0(encoder_layer_1_attention_output_dense_WEIGHT_PRECISION_0),
    .WEIGHT_PRECISION_1(encoder_layer_1_attention_output_dense_WEIGHT_PRECISION_1),
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_0),
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_1_attention_output_dense_WEIGHT_PARALLELISM_DIM_0),
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_1),
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_1_attention_output_dense_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_1_attention_output_dense_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_1_attention_output_dense_weight),
    .data_out_ready(encoder_layer_1_attention_output_dense_weight_ready),
    .data_out_valid(encoder_layer_1_attention_output_dense_weight_valid)
);

encoder_layer_1_attention_output_dense_bias_source #(
    .BIAS_PRECISION_0(encoder_layer_1_attention_output_dense_BIAS_PRECISION_0),
    .BIAS_PRECISION_1(encoder_layer_1_attention_output_dense_BIAS_PRECISION_1),
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_output_dense_BIAS_TENSOR_SIZE_DIM_0),
    .BIAS_PARALLELISM_DIM_0(encoder_layer_1_attention_output_dense_BIAS_PARALLELISM_DIM_0),
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_output_dense_BIAS_TENSOR_SIZE_DIM_1),
    .BIAS_PARALLELISM_DIM_1(encoder_layer_1_attention_output_dense_BIAS_PARALLELISM_DIM_1)
) encoder_layer_1_attention_output_dense_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_1_attention_output_dense_bias),
    .data_out_ready(encoder_layer_1_attention_output_dense_bias_ready),
    .data_out_valid(encoder_layer_1_attention_output_dense_bias_valid)
);

// add_2
fixed_adder #(
    .DATA_IN_0_PRECISION_0(add_2_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(add_2_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(add_2_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(add_2_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(add_2_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(add_2_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(add_2_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(add_2_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_IN_1_PRECISION_0(add_2_DATA_IN_1_PRECISION_0), // = 8
    .DATA_IN_1_PRECISION_1(add_2_DATA_IN_1_PRECISION_1), // = 3
    .DATA_IN_1_TENSOR_SIZE_DIM_0(add_2_DATA_IN_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_1_PARALLELISM_DIM_0(add_2_DATA_IN_1_PARALLELISM_DIM_0), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_1(add_2_DATA_IN_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_1_PARALLELISM_DIM_1(add_2_DATA_IN_1_PARALLELISM_DIM_1), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_2(add_2_DATA_IN_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_1_PARALLELISM_DIM_2(add_2_DATA_IN_1_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(add_2_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(add_2_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(add_2_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(add_2_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(add_2_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(add_2_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(add_2_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(add_2_DATA_OUT_0_PARALLELISM_DIM_2)
) add_2_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(add_2_data_in_0),
    .data_in_0_valid(add_2_data_in_0_valid),
    .data_in_0_ready(add_2_data_in_0_ready),
        
    .data_in_1(add_2_data_in_1),
    .data_in_1_valid(add_2_data_in_1_valid),
    .data_in_1_ready(add_2_data_in_1_ready),
        
    .data_out_0(add_2_data_out_0),
    .data_out_0_valid(add_2_data_out_0_valid),
    .data_out_0_ready(add_2_data_out_0_ready)
);

// encoder_layer_1_attention_output_layer_norm
norm #(
    .DATA_IN_0_PRECISION_0(encoder_layer_1_attention_output_layer_norm_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_1_attention_output_layer_norm_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_1_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_1_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_1_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_1_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_1_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_1_attention_output_layer_norm_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_1_attention_output_layer_norm_data_in_0),
    .data_in_0_valid(encoder_layer_1_attention_output_layer_norm_data_in_0_valid),
    .data_in_0_ready(encoder_layer_1_attention_output_layer_norm_data_in_0_ready),
        
    .data_out_0(encoder_layer_1_attention_output_layer_norm_data_out_0),
    .data_out_0_valid(encoder_layer_1_attention_output_layer_norm_data_out_0_valid),
    .data_out_0_ready(encoder_layer_1_attention_output_layer_norm_data_out_0_ready)
);

// df_split_3
df_split #(
    .DATA_IN_0_PRECISION_0(df_split_3_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(df_split_3_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(df_split_3_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(df_split_3_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(df_split_3_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(df_split_3_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(df_split_3_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(df_split_3_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(df_split_3_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(df_split_3_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(df_split_3_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(df_split_3_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(df_split_3_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(df_split_3_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(df_split_3_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(df_split_3_DATA_OUT_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_1_PRECISION_0(df_split_3_DATA_OUT_1_PRECISION_0), // = 8
    .DATA_OUT_1_PRECISION_1(df_split_3_DATA_OUT_1_PRECISION_1), // = 3
    .DATA_OUT_1_TENSOR_SIZE_DIM_0(df_split_3_DATA_OUT_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_1_PARALLELISM_DIM_0(df_split_3_DATA_OUT_1_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_1_TENSOR_SIZE_DIM_1(df_split_3_DATA_OUT_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_1_PARALLELISM_DIM_1(df_split_3_DATA_OUT_1_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_1_TENSOR_SIZE_DIM_2(df_split_3_DATA_OUT_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_1_PARALLELISM_DIM_2(df_split_3_DATA_OUT_1_PARALLELISM_DIM_2)
) df_split_3_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(df_split_3_data_in_0),
    .data_in_0_valid(df_split_3_data_in_0_valid),
    .data_in_0_ready(df_split_3_data_in_0_ready),
        
    .data_out_0(df_split_3_data_out_0),
    .data_out_0_valid(df_split_3_data_out_0_valid),
    .data_out_0_ready(df_split_3_data_out_0_ready),
        
    .data_out_1(df_split_3_data_out_1),
    .data_out_1_valid(df_split_3_data_out_1_valid),
    .data_out_1_ready(df_split_3_data_out_1_ready)
);

// getitem_6
buffer #(
    .DATA_IN_0_PRECISION_0(getitem_6_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(getitem_6_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(getitem_6_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(getitem_6_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(getitem_6_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(getitem_6_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(getitem_6_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(getitem_6_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .SELECT(getitem_6_SELECT), // = 0
    .DATA_OUT_0_PRECISION_0(getitem_6_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(getitem_6_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(getitem_6_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(getitem_6_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(getitem_6_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(getitem_6_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(getitem_6_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(getitem_6_DATA_OUT_0_PARALLELISM_DIM_2)
) getitem_6_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0       (getitem_6_data_in_0),
    .data_in_0_valid (getitem_6_data_in_0_valid),
    .data_in_0_ready (getitem_6_data_in_0_ready),
    
    .data_out_0       (getitem_6_data_out_0),
    .data_out_0_valid (getitem_6_data_out_0_valid),
    .data_out_0_ready (getitem_6_data_out_0_ready)
);

// getitem_7
buffer #(
    .DATA_IN_1_PRECISION_0(getitem_7_DATA_IN_1_PRECISION_0), // = 8
    .DATA_IN_1_PRECISION_1(getitem_7_DATA_IN_1_PRECISION_1), // = 3
    .DATA_IN_1_TENSOR_SIZE_DIM_0(getitem_7_DATA_IN_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_1_PARALLELISM_DIM_0(getitem_7_DATA_IN_1_PARALLELISM_DIM_0), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_1(getitem_7_DATA_IN_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_1_PARALLELISM_DIM_1(getitem_7_DATA_IN_1_PARALLELISM_DIM_1), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_2(getitem_7_DATA_IN_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_1_PARALLELISM_DIM_2(getitem_7_DATA_IN_1_PARALLELISM_DIM_2), // = 1
    .SELECT(getitem_7_SELECT), // = 1
    .DATA_OUT_0_PRECISION_0(getitem_7_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(getitem_7_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(getitem_7_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(getitem_7_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(getitem_7_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(getitem_7_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(getitem_7_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(getitem_7_DATA_OUT_0_PARALLELISM_DIM_2)
) getitem_7_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0       (getitem_7_data_in_0),
    .data_in_0_valid (getitem_7_data_in_0_valid),
    .data_in_0_ready (getitem_7_data_in_0_ready),
    
    .data_out_0       (getitem_7_data_out_0),
    .data_out_0_valid (getitem_7_data_out_0_valid),
    .data_out_0_ready (getitem_7_data_out_0_ready)
);

// encoder_layer_1_intermediate_dense
fixed_linear #(
    .DATA_IN_0_PRECISION_0(encoder_layer_1_intermediate_dense_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_1_intermediate_dense_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_1_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_1_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_1_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_1_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_1_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_1_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .WEIGHT_PRECISION_0(encoder_layer_1_intermediate_dense_WEIGHT_PRECISION_0), // = 8
    .WEIGHT_PRECISION_1(encoder_layer_1_intermediate_dense_WEIGHT_PRECISION_1), // = 3
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_1_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_0), // = 96
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_1_intermediate_dense_WEIGHT_PARALLELISM_DIM_0), // = 4
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_1_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_1), // = 384
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_1_intermediate_dense_WEIGHT_PARALLELISM_DIM_1), // = 4
    .BIAS_PRECISION_0(encoder_layer_1_intermediate_dense_BIAS_PRECISION_0), // = 8
    .BIAS_PRECISION_1(encoder_layer_1_intermediate_dense_BIAS_PRECISION_1), // = 3
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_1_intermediate_dense_BIAS_TENSOR_SIZE_DIM_0), // = 384
    .BIAS_PARALLELISM_DIM_0(encoder_layer_1_intermediate_dense_BIAS_PARALLELISM_DIM_0), // = 4
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_1_intermediate_dense_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .BIAS_PARALLELISM_DIM_1(encoder_layer_1_intermediate_dense_BIAS_PARALLELISM_DIM_1), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_1_intermediate_dense_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_1_intermediate_dense_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_1_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 384
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_1_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_1_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_1_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_1_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_1_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_1_intermediate_dense_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_1_intermediate_dense_data_in_0),
    .data_in_0_valid(encoder_layer_1_intermediate_dense_data_in_0_valid),
    .data_in_0_ready(encoder_layer_1_intermediate_dense_data_in_0_ready),
        
    .weight(encoder_layer_1_intermediate_dense_weight),
    .weight_valid(encoder_layer_1_intermediate_dense_weight_valid),
    .weight_ready(encoder_layer_1_intermediate_dense_weight_ready),
        
    .bias(encoder_layer_1_intermediate_dense_bias),
    .bias_valid(encoder_layer_1_intermediate_dense_bias_valid),
    .bias_ready(encoder_layer_1_intermediate_dense_bias_ready),
        
    .data_out_0(encoder_layer_1_intermediate_dense_data_out_0),
    .data_out_0_valid(encoder_layer_1_intermediate_dense_data_out_0_valid),
    .data_out_0_ready(encoder_layer_1_intermediate_dense_data_out_0_ready)
);

encoder_layer_1_intermediate_dense_weight_source #(
    .WEIGHT_PRECISION_0(encoder_layer_1_intermediate_dense_WEIGHT_PRECISION_0),
    .WEIGHT_PRECISION_1(encoder_layer_1_intermediate_dense_WEIGHT_PRECISION_1),
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_1_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_0),
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_1_intermediate_dense_WEIGHT_PARALLELISM_DIM_0),
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_1_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_1),
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_1_intermediate_dense_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_1_intermediate_dense_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_1_intermediate_dense_weight),
    .data_out_ready(encoder_layer_1_intermediate_dense_weight_ready),
    .data_out_valid(encoder_layer_1_intermediate_dense_weight_valid)
);

encoder_layer_1_intermediate_dense_bias_source #(
    .BIAS_PRECISION_0(encoder_layer_1_intermediate_dense_BIAS_PRECISION_0),
    .BIAS_PRECISION_1(encoder_layer_1_intermediate_dense_BIAS_PRECISION_1),
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_1_intermediate_dense_BIAS_TENSOR_SIZE_DIM_0),
    .BIAS_PARALLELISM_DIM_0(encoder_layer_1_intermediate_dense_BIAS_PARALLELISM_DIM_0),
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_1_intermediate_dense_BIAS_TENSOR_SIZE_DIM_1),
    .BIAS_PARALLELISM_DIM_1(encoder_layer_1_intermediate_dense_BIAS_PARALLELISM_DIM_1)
) encoder_layer_1_intermediate_dense_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_1_intermediate_dense_bias),
    .data_out_ready(encoder_layer_1_intermediate_dense_bias_ready),
    .data_out_valid(encoder_layer_1_intermediate_dense_bias_valid)
);

// encoder_layer_1_intermediate_intermediate_act_fn
fixed_gelu #(
    .DATA_IN_0_PRECISION_0(encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 384
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_1_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 384
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_1_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_1_intermediate_intermediate_act_fn_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_1_intermediate_intermediate_act_fn_data_in_0),
    .data_in_0_valid(encoder_layer_1_intermediate_intermediate_act_fn_data_in_0_valid),
    .data_in_0_ready(encoder_layer_1_intermediate_intermediate_act_fn_data_in_0_ready),
        
    .data_out_0(encoder_layer_1_intermediate_intermediate_act_fn_data_out_0),
    .data_out_0_valid(encoder_layer_1_intermediate_intermediate_act_fn_data_out_0_valid),
    .data_out_0_ready(encoder_layer_1_intermediate_intermediate_act_fn_data_out_0_ready)
);

// encoder_layer_1_output_dense
fixed_linear #(
    .DATA_IN_0_PRECISION_0(encoder_layer_1_output_dense_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_1_output_dense_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_1_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 384
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_1_output_dense_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_1_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_1_output_dense_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_1_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_1_output_dense_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .WEIGHT_PRECISION_0(encoder_layer_1_output_dense_WEIGHT_PRECISION_0), // = 8
    .WEIGHT_PRECISION_1(encoder_layer_1_output_dense_WEIGHT_PRECISION_1), // = 3
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_1_output_dense_WEIGHT_TENSOR_SIZE_DIM_0), // = 384
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_1_output_dense_WEIGHT_PARALLELISM_DIM_0), // = 4
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_1_output_dense_WEIGHT_TENSOR_SIZE_DIM_1), // = 96
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_1_output_dense_WEIGHT_PARALLELISM_DIM_1), // = 4
    .BIAS_PRECISION_0(encoder_layer_1_output_dense_BIAS_PRECISION_0), // = 8
    .BIAS_PRECISION_1(encoder_layer_1_output_dense_BIAS_PRECISION_1), // = 3
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_1_output_dense_BIAS_TENSOR_SIZE_DIM_0), // = 96
    .BIAS_PARALLELISM_DIM_0(encoder_layer_1_output_dense_BIAS_PARALLELISM_DIM_0), // = 4
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_1_output_dense_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .BIAS_PARALLELISM_DIM_1(encoder_layer_1_output_dense_BIAS_PARALLELISM_DIM_1), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_1_output_dense_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_1_output_dense_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_1_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_1_output_dense_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_1_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_1_output_dense_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_1_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_1_output_dense_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_1_output_dense_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_1_output_dense_data_in_0),
    .data_in_0_valid(encoder_layer_1_output_dense_data_in_0_valid),
    .data_in_0_ready(encoder_layer_1_output_dense_data_in_0_ready),
        
    .weight(encoder_layer_1_output_dense_weight),
    .weight_valid(encoder_layer_1_output_dense_weight_valid),
    .weight_ready(encoder_layer_1_output_dense_weight_ready),
        
    .bias(encoder_layer_1_output_dense_bias),
    .bias_valid(encoder_layer_1_output_dense_bias_valid),
    .bias_ready(encoder_layer_1_output_dense_bias_ready),
        
    .data_out_0(encoder_layer_1_output_dense_data_out_0),
    .data_out_0_valid(encoder_layer_1_output_dense_data_out_0_valid),
    .data_out_0_ready(encoder_layer_1_output_dense_data_out_0_ready)
);

encoder_layer_1_output_dense_weight_source #(
    .WEIGHT_PRECISION_0(encoder_layer_1_output_dense_WEIGHT_PRECISION_0),
    .WEIGHT_PRECISION_1(encoder_layer_1_output_dense_WEIGHT_PRECISION_1),
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_1_output_dense_WEIGHT_TENSOR_SIZE_DIM_0),
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_1_output_dense_WEIGHT_PARALLELISM_DIM_0),
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_1_output_dense_WEIGHT_TENSOR_SIZE_DIM_1),
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_1_output_dense_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_1_output_dense_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_1_output_dense_weight),
    .data_out_ready(encoder_layer_1_output_dense_weight_ready),
    .data_out_valid(encoder_layer_1_output_dense_weight_valid)
);

encoder_layer_1_output_dense_bias_source #(
    .BIAS_PRECISION_0(encoder_layer_1_output_dense_BIAS_PRECISION_0),
    .BIAS_PRECISION_1(encoder_layer_1_output_dense_BIAS_PRECISION_1),
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_1_output_dense_BIAS_TENSOR_SIZE_DIM_0),
    .BIAS_PARALLELISM_DIM_0(encoder_layer_1_output_dense_BIAS_PARALLELISM_DIM_0),
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_1_output_dense_BIAS_TENSOR_SIZE_DIM_1),
    .BIAS_PARALLELISM_DIM_1(encoder_layer_1_output_dense_BIAS_PARALLELISM_DIM_1)
) encoder_layer_1_output_dense_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_1_output_dense_bias),
    .data_out_ready(encoder_layer_1_output_dense_bias_ready),
    .data_out_valid(encoder_layer_1_output_dense_bias_valid)
);

// add_3
fixed_adder #(
    .DATA_IN_0_PRECISION_0(add_3_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(add_3_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(add_3_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(add_3_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(add_3_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(add_3_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(add_3_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(add_3_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_IN_1_PRECISION_0(add_3_DATA_IN_1_PRECISION_0), // = 8
    .DATA_IN_1_PRECISION_1(add_3_DATA_IN_1_PRECISION_1), // = 3
    .DATA_IN_1_TENSOR_SIZE_DIM_0(add_3_DATA_IN_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_1_PARALLELISM_DIM_0(add_3_DATA_IN_1_PARALLELISM_DIM_0), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_1(add_3_DATA_IN_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_1_PARALLELISM_DIM_1(add_3_DATA_IN_1_PARALLELISM_DIM_1), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_2(add_3_DATA_IN_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_1_PARALLELISM_DIM_2(add_3_DATA_IN_1_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(add_3_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(add_3_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(add_3_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(add_3_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(add_3_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(add_3_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(add_3_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(add_3_DATA_OUT_0_PARALLELISM_DIM_2)
) add_3_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(add_3_data_in_0),
    .data_in_0_valid(add_3_data_in_0_valid),
    .data_in_0_ready(add_3_data_in_0_ready),
        
    .data_in_1(add_3_data_in_1),
    .data_in_1_valid(add_3_data_in_1_valid),
    .data_in_1_ready(add_3_data_in_1_ready),
        
    .data_out_0(add_3_data_out_0),
    .data_out_0_valid(add_3_data_out_0_valid),
    .data_out_0_ready(add_3_data_out_0_ready)
);

// encoder_layer_1_output_layer_norm
norm #(
    .DATA_IN_0_PRECISION_0(encoder_layer_1_output_layer_norm_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_1_output_layer_norm_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_1_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_1_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_1_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_1_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_1_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_1_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_1_output_layer_norm_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_1_output_layer_norm_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_1_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_1_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_1_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_1_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_1_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_1_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_1_output_layer_norm_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_1_output_layer_norm_data_in_0),
    .data_in_0_valid(encoder_layer_1_output_layer_norm_data_in_0_valid),
    .data_in_0_ready(encoder_layer_1_output_layer_norm_data_in_0_ready),
        
    .data_out_0(encoder_layer_1_output_layer_norm_data_out_0),
    .data_out_0_valid(encoder_layer_1_output_layer_norm_data_out_0_valid),
    .data_out_0_ready(encoder_layer_1_output_layer_norm_data_out_0_ready)
);

// df_split_4
df_split #(
    .DATA_IN_0_PRECISION_0(df_split_4_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(df_split_4_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(df_split_4_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(df_split_4_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(df_split_4_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(df_split_4_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(df_split_4_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(df_split_4_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(df_split_4_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(df_split_4_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(df_split_4_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(df_split_4_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(df_split_4_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(df_split_4_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(df_split_4_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(df_split_4_DATA_OUT_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_1_PRECISION_0(df_split_4_DATA_OUT_1_PRECISION_0), // = 8
    .DATA_OUT_1_PRECISION_1(df_split_4_DATA_OUT_1_PRECISION_1), // = 3
    .DATA_OUT_1_TENSOR_SIZE_DIM_0(df_split_4_DATA_OUT_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_1_PARALLELISM_DIM_0(df_split_4_DATA_OUT_1_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_1_TENSOR_SIZE_DIM_1(df_split_4_DATA_OUT_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_1_PARALLELISM_DIM_1(df_split_4_DATA_OUT_1_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_1_TENSOR_SIZE_DIM_2(df_split_4_DATA_OUT_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_1_PARALLELISM_DIM_2(df_split_4_DATA_OUT_1_PARALLELISM_DIM_2)
) df_split_4_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(df_split_4_data_in_0),
    .data_in_0_valid(df_split_4_data_in_0_valid),
    .data_in_0_ready(df_split_4_data_in_0_ready),
        
    .data_out_0(df_split_4_data_out_0),
    .data_out_0_valid(df_split_4_data_out_0_valid),
    .data_out_0_ready(df_split_4_data_out_0_ready),
        
    .data_out_1(df_split_4_data_out_1),
    .data_out_1_valid(df_split_4_data_out_1_valid),
    .data_out_1_ready(df_split_4_data_out_1_ready)
);

// getitem_8
buffer #(
    .DATA_IN_0_PRECISION_0(getitem_8_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(getitem_8_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(getitem_8_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(getitem_8_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(getitem_8_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(getitem_8_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(getitem_8_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(getitem_8_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .SELECT(getitem_8_SELECT), // = 0
    .DATA_OUT_0_PRECISION_0(getitem_8_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(getitem_8_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(getitem_8_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(getitem_8_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(getitem_8_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(getitem_8_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(getitem_8_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(getitem_8_DATA_OUT_0_PARALLELISM_DIM_2)
) getitem_8_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0       (getitem_8_data_in_0),
    .data_in_0_valid (getitem_8_data_in_0_valid),
    .data_in_0_ready (getitem_8_data_in_0_ready),
    
    .data_out_0       (getitem_8_data_out_0),
    .data_out_0_valid (getitem_8_data_out_0_valid),
    .data_out_0_ready (getitem_8_data_out_0_ready)
);

// getitem_9
buffer #(
    .DATA_IN_1_PRECISION_0(getitem_9_DATA_IN_1_PRECISION_0), // = 8
    .DATA_IN_1_PRECISION_1(getitem_9_DATA_IN_1_PRECISION_1), // = 3
    .DATA_IN_1_TENSOR_SIZE_DIM_0(getitem_9_DATA_IN_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_1_PARALLELISM_DIM_0(getitem_9_DATA_IN_1_PARALLELISM_DIM_0), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_1(getitem_9_DATA_IN_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_1_PARALLELISM_DIM_1(getitem_9_DATA_IN_1_PARALLELISM_DIM_1), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_2(getitem_9_DATA_IN_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_1_PARALLELISM_DIM_2(getitem_9_DATA_IN_1_PARALLELISM_DIM_2), // = 1
    .SELECT(getitem_9_SELECT), // = 1
    .DATA_OUT_0_PRECISION_0(getitem_9_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(getitem_9_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(getitem_9_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(getitem_9_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(getitem_9_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(getitem_9_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(getitem_9_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(getitem_9_DATA_OUT_0_PARALLELISM_DIM_2)
) getitem_9_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0       (getitem_9_data_in_0),
    .data_in_0_valid (getitem_9_data_in_0_valid),
    .data_in_0_ready (getitem_9_data_in_0_ready),
    
    .data_out_0       (getitem_9_data_out_0),
    .data_out_0_valid (getitem_9_data_out_0_valid),
    .data_out_0_ready (getitem_9_data_out_0_ready)
);

// encoder_layer_2_attention_self
fixed_self_attention_single_precision_wrapper #(
    .DATA_IN_0_PRECISION_0(encoder_layer_2_attention_self_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_2_attention_self_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_2_attention_self_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_2_attention_self_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_2_attention_self_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_2_attention_self_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .OUTPUT_ATTENTIONS(encoder_layer_2_attention_self_OUTPUT_ATTENTIONS), // = 0
    .QUERY_WEIGHT_PRECISION_0(encoder_layer_2_attention_self_QUERY_WEIGHT_PRECISION_0), // = 8
    .QUERY_WEIGHT_PRECISION_1(encoder_layer_2_attention_self_QUERY_WEIGHT_PRECISION_1), // = 3
    .QUERY_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_0), // = 96
    .QUERY_WEIGHT_PARALLELISM_DIM_0(encoder_layer_2_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_0), // = 4
    .QUERY_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_1), // = 96
    .QUERY_WEIGHT_PARALLELISM_DIM_1(encoder_layer_2_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_1), // = 4
    .QUERY_BIAS_PRECISION_0(encoder_layer_2_attention_self_QUERY_BIAS_PRECISION_0), // = 8
    .QUERY_BIAS_PRECISION_1(encoder_layer_2_attention_self_QUERY_BIAS_PRECISION_1), // = 3
    .QUERY_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_0), // = 96
    .QUERY_BIAS_PARALLELISM_DIM_0(encoder_layer_2_attention_self_QUERY_BIAS_PARALLELISM_DIM_0), // = 4
    .QUERY_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .QUERY_BIAS_PARALLELISM_DIM_1(encoder_layer_2_attention_self_QUERY_BIAS_PARALLELISM_DIM_1), // = 1
    .KEY_WEIGHT_PRECISION_0(encoder_layer_2_attention_self_KEY_WEIGHT_PRECISION_0), // = 8
    .KEY_WEIGHT_PRECISION_1(encoder_layer_2_attention_self_KEY_WEIGHT_PRECISION_1), // = 3
    .KEY_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_0), // = 96
    .KEY_WEIGHT_PARALLELISM_DIM_0(encoder_layer_2_attention_self_KEY_WEIGHT_PARALLELISM_DIM_0), // = 4
    .KEY_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_1), // = 96
    .KEY_WEIGHT_PARALLELISM_DIM_1(encoder_layer_2_attention_self_KEY_WEIGHT_PARALLELISM_DIM_1), // = 4
    .KEY_BIAS_PRECISION_0(encoder_layer_2_attention_self_KEY_BIAS_PRECISION_0), // = 8
    .KEY_BIAS_PRECISION_1(encoder_layer_2_attention_self_KEY_BIAS_PRECISION_1), // = 3
    .KEY_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_0), // = 96
    .KEY_BIAS_PARALLELISM_DIM_0(encoder_layer_2_attention_self_KEY_BIAS_PARALLELISM_DIM_0), // = 4
    .KEY_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .KEY_BIAS_PARALLELISM_DIM_1(encoder_layer_2_attention_self_KEY_BIAS_PARALLELISM_DIM_1), // = 1
    .VALUE_WEIGHT_PRECISION_0(encoder_layer_2_attention_self_VALUE_WEIGHT_PRECISION_0), // = 8
    .VALUE_WEIGHT_PRECISION_1(encoder_layer_2_attention_self_VALUE_WEIGHT_PRECISION_1), // = 3
    .VALUE_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_0), // = 96
    .VALUE_WEIGHT_PARALLELISM_DIM_0(encoder_layer_2_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_0), // = 4
    .VALUE_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_1), // = 96
    .VALUE_WEIGHT_PARALLELISM_DIM_1(encoder_layer_2_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_1), // = 4
    .VALUE_BIAS_PRECISION_0(encoder_layer_2_attention_self_VALUE_BIAS_PRECISION_0), // = 8
    .VALUE_BIAS_PRECISION_1(encoder_layer_2_attention_self_VALUE_BIAS_PRECISION_1), // = 3
    .VALUE_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_0), // = 96
    .VALUE_BIAS_PARALLELISM_DIM_0(encoder_layer_2_attention_self_VALUE_BIAS_PARALLELISM_DIM_0), // = 4
    .VALUE_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .VALUE_BIAS_PARALLELISM_DIM_1(encoder_layer_2_attention_self_VALUE_BIAS_PARALLELISM_DIM_1), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_2_attention_self_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_2_attention_self_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_2_attention_self_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_2_attention_self_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_2_attention_self_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_2_attention_self_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_2_attention_self_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_2_attention_self_data_in_0),
    .data_in_0_valid(encoder_layer_2_attention_self_data_in_0_valid),
    .data_in_0_ready(encoder_layer_2_attention_self_data_in_0_ready),
        
    .query_weight(encoder_layer_2_attention_self_query_weight),
    .query_weight_valid(encoder_layer_2_attention_self_query_weight_valid),
    .query_weight_ready(encoder_layer_2_attention_self_query_weight_ready),
        
    .query_bias(encoder_layer_2_attention_self_query_bias),
    .query_bias_valid(encoder_layer_2_attention_self_query_bias_valid),
    .query_bias_ready(encoder_layer_2_attention_self_query_bias_ready),
        
    .key_weight(encoder_layer_2_attention_self_key_weight),
    .key_weight_valid(encoder_layer_2_attention_self_key_weight_valid),
    .key_weight_ready(encoder_layer_2_attention_self_key_weight_ready),
        
    .key_bias(encoder_layer_2_attention_self_key_bias),
    .key_bias_valid(encoder_layer_2_attention_self_key_bias_valid),
    .key_bias_ready(encoder_layer_2_attention_self_key_bias_ready),
        
    .value_weight(encoder_layer_2_attention_self_value_weight),
    .value_weight_valid(encoder_layer_2_attention_self_value_weight_valid),
    .value_weight_ready(encoder_layer_2_attention_self_value_weight_ready),
        
    .value_bias(encoder_layer_2_attention_self_value_bias),
    .value_bias_valid(encoder_layer_2_attention_self_value_bias_valid),
    .value_bias_ready(encoder_layer_2_attention_self_value_bias_ready),
        
    .data_out_0(encoder_layer_2_attention_self_data_out_0),
    .data_out_0_valid(encoder_layer_2_attention_self_data_out_0_valid),
    .data_out_0_ready(encoder_layer_2_attention_self_data_out_0_ready)
);

encoder_layer_2_attention_self_query_weight_source #(
    .QUERY_WEIGHT_PRECISION_0(encoder_layer_2_attention_self_QUERY_WEIGHT_PRECISION_0),
    .QUERY_WEIGHT_PRECISION_1(encoder_layer_2_attention_self_QUERY_WEIGHT_PRECISION_1),
    .QUERY_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_0),
    .QUERY_WEIGHT_PARALLELISM_DIM_0(encoder_layer_2_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_0),
    .QUERY_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_self_QUERY_WEIGHT_TENSOR_SIZE_DIM_1),
    .QUERY_WEIGHT_PARALLELISM_DIM_1(encoder_layer_2_attention_self_QUERY_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_2_attention_self_query_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_2_attention_self_query_weight),
    .data_out_ready(encoder_layer_2_attention_self_query_weight_ready),
    .data_out_valid(encoder_layer_2_attention_self_query_weight_valid)
);

encoder_layer_2_attention_self_query_bias_source #(
    .QUERY_BIAS_PRECISION_0(encoder_layer_2_attention_self_QUERY_BIAS_PRECISION_0),
    .QUERY_BIAS_PRECISION_1(encoder_layer_2_attention_self_QUERY_BIAS_PRECISION_1),
    .QUERY_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_0),
    .QUERY_BIAS_PARALLELISM_DIM_0(encoder_layer_2_attention_self_QUERY_BIAS_PARALLELISM_DIM_0),
    .QUERY_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_self_QUERY_BIAS_TENSOR_SIZE_DIM_1),
    .QUERY_BIAS_PARALLELISM_DIM_1(encoder_layer_2_attention_self_QUERY_BIAS_PARALLELISM_DIM_1)
) encoder_layer_2_attention_self_query_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_2_attention_self_query_bias),
    .data_out_ready(encoder_layer_2_attention_self_query_bias_ready),
    .data_out_valid(encoder_layer_2_attention_self_query_bias_valid)
);

encoder_layer_2_attention_self_key_weight_source #(
    .KEY_WEIGHT_PRECISION_0(encoder_layer_2_attention_self_KEY_WEIGHT_PRECISION_0),
    .KEY_WEIGHT_PRECISION_1(encoder_layer_2_attention_self_KEY_WEIGHT_PRECISION_1),
    .KEY_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_0),
    .KEY_WEIGHT_PARALLELISM_DIM_0(encoder_layer_2_attention_self_KEY_WEIGHT_PARALLELISM_DIM_0),
    .KEY_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_self_KEY_WEIGHT_TENSOR_SIZE_DIM_1),
    .KEY_WEIGHT_PARALLELISM_DIM_1(encoder_layer_2_attention_self_KEY_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_2_attention_self_key_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_2_attention_self_key_weight),
    .data_out_ready(encoder_layer_2_attention_self_key_weight_ready),
    .data_out_valid(encoder_layer_2_attention_self_key_weight_valid)
);

encoder_layer_2_attention_self_key_bias_source #(
    .KEY_BIAS_PRECISION_0(encoder_layer_2_attention_self_KEY_BIAS_PRECISION_0),
    .KEY_BIAS_PRECISION_1(encoder_layer_2_attention_self_KEY_BIAS_PRECISION_1),
    .KEY_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_0),
    .KEY_BIAS_PARALLELISM_DIM_0(encoder_layer_2_attention_self_KEY_BIAS_PARALLELISM_DIM_0),
    .KEY_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_self_KEY_BIAS_TENSOR_SIZE_DIM_1),
    .KEY_BIAS_PARALLELISM_DIM_1(encoder_layer_2_attention_self_KEY_BIAS_PARALLELISM_DIM_1)
) encoder_layer_2_attention_self_key_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_2_attention_self_key_bias),
    .data_out_ready(encoder_layer_2_attention_self_key_bias_ready),
    .data_out_valid(encoder_layer_2_attention_self_key_bias_valid)
);

encoder_layer_2_attention_self_value_weight_source #(
    .VALUE_WEIGHT_PRECISION_0(encoder_layer_2_attention_self_VALUE_WEIGHT_PRECISION_0),
    .VALUE_WEIGHT_PRECISION_1(encoder_layer_2_attention_self_VALUE_WEIGHT_PRECISION_1),
    .VALUE_WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_0),
    .VALUE_WEIGHT_PARALLELISM_DIM_0(encoder_layer_2_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_0),
    .VALUE_WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_self_VALUE_WEIGHT_TENSOR_SIZE_DIM_1),
    .VALUE_WEIGHT_PARALLELISM_DIM_1(encoder_layer_2_attention_self_VALUE_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_2_attention_self_value_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_2_attention_self_value_weight),
    .data_out_ready(encoder_layer_2_attention_self_value_weight_ready),
    .data_out_valid(encoder_layer_2_attention_self_value_weight_valid)
);

encoder_layer_2_attention_self_value_bias_source #(
    .VALUE_BIAS_PRECISION_0(encoder_layer_2_attention_self_VALUE_BIAS_PRECISION_0),
    .VALUE_BIAS_PRECISION_1(encoder_layer_2_attention_self_VALUE_BIAS_PRECISION_1),
    .VALUE_BIAS_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_0),
    .VALUE_BIAS_PARALLELISM_DIM_0(encoder_layer_2_attention_self_VALUE_BIAS_PARALLELISM_DIM_0),
    .VALUE_BIAS_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_self_VALUE_BIAS_TENSOR_SIZE_DIM_1),
    .VALUE_BIAS_PARALLELISM_DIM_1(encoder_layer_2_attention_self_VALUE_BIAS_PARALLELISM_DIM_1)
) encoder_layer_2_attention_self_value_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_2_attention_self_value_bias),
    .data_out_ready(encoder_layer_2_attention_self_value_bias_ready),
    .data_out_valid(encoder_layer_2_attention_self_value_bias_valid)
);

// encoder_layer_2_attention_output_dense
fixed_linear #(
    .DATA_IN_0_PRECISION_0(encoder_layer_2_attention_output_dense_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_2_attention_output_dense_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_2_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_2_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_2_attention_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_2_attention_output_dense_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .WEIGHT_PRECISION_0(encoder_layer_2_attention_output_dense_WEIGHT_PRECISION_0), // = 8
    .WEIGHT_PRECISION_1(encoder_layer_2_attention_output_dense_WEIGHT_PRECISION_1), // = 3
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_0), // = 96
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_2_attention_output_dense_WEIGHT_PARALLELISM_DIM_0), // = 4
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_1), // = 96
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_2_attention_output_dense_WEIGHT_PARALLELISM_DIM_1), // = 4
    .BIAS_PRECISION_0(encoder_layer_2_attention_output_dense_BIAS_PRECISION_0), // = 8
    .BIAS_PRECISION_1(encoder_layer_2_attention_output_dense_BIAS_PRECISION_1), // = 3
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_output_dense_BIAS_TENSOR_SIZE_DIM_0), // = 96
    .BIAS_PARALLELISM_DIM_0(encoder_layer_2_attention_output_dense_BIAS_PARALLELISM_DIM_0), // = 4
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_output_dense_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .BIAS_PARALLELISM_DIM_1(encoder_layer_2_attention_output_dense_BIAS_PARALLELISM_DIM_1), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_2_attention_output_dense_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_2_attention_output_dense_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_2_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_2_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_2_attention_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_2_attention_output_dense_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_2_attention_output_dense_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_2_attention_output_dense_data_in_0),
    .data_in_0_valid(encoder_layer_2_attention_output_dense_data_in_0_valid),
    .data_in_0_ready(encoder_layer_2_attention_output_dense_data_in_0_ready),
        
    .weight(encoder_layer_2_attention_output_dense_weight),
    .weight_valid(encoder_layer_2_attention_output_dense_weight_valid),
    .weight_ready(encoder_layer_2_attention_output_dense_weight_ready),
        
    .bias(encoder_layer_2_attention_output_dense_bias),
    .bias_valid(encoder_layer_2_attention_output_dense_bias_valid),
    .bias_ready(encoder_layer_2_attention_output_dense_bias_ready),
        
    .data_out_0(encoder_layer_2_attention_output_dense_data_out_0),
    .data_out_0_valid(encoder_layer_2_attention_output_dense_data_out_0_valid),
    .data_out_0_ready(encoder_layer_2_attention_output_dense_data_out_0_ready)
);

encoder_layer_2_attention_output_dense_weight_source #(
    .WEIGHT_PRECISION_0(encoder_layer_2_attention_output_dense_WEIGHT_PRECISION_0),
    .WEIGHT_PRECISION_1(encoder_layer_2_attention_output_dense_WEIGHT_PRECISION_1),
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_0),
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_2_attention_output_dense_WEIGHT_PARALLELISM_DIM_0),
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_output_dense_WEIGHT_TENSOR_SIZE_DIM_1),
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_2_attention_output_dense_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_2_attention_output_dense_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_2_attention_output_dense_weight),
    .data_out_ready(encoder_layer_2_attention_output_dense_weight_ready),
    .data_out_valid(encoder_layer_2_attention_output_dense_weight_valid)
);

encoder_layer_2_attention_output_dense_bias_source #(
    .BIAS_PRECISION_0(encoder_layer_2_attention_output_dense_BIAS_PRECISION_0),
    .BIAS_PRECISION_1(encoder_layer_2_attention_output_dense_BIAS_PRECISION_1),
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_output_dense_BIAS_TENSOR_SIZE_DIM_0),
    .BIAS_PARALLELISM_DIM_0(encoder_layer_2_attention_output_dense_BIAS_PARALLELISM_DIM_0),
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_output_dense_BIAS_TENSOR_SIZE_DIM_1),
    .BIAS_PARALLELISM_DIM_1(encoder_layer_2_attention_output_dense_BIAS_PARALLELISM_DIM_1)
) encoder_layer_2_attention_output_dense_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_2_attention_output_dense_bias),
    .data_out_ready(encoder_layer_2_attention_output_dense_bias_ready),
    .data_out_valid(encoder_layer_2_attention_output_dense_bias_valid)
);

// add_4
fixed_adder #(
    .DATA_IN_0_PRECISION_0(add_4_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(add_4_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(add_4_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(add_4_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(add_4_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(add_4_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(add_4_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(add_4_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_IN_1_PRECISION_0(add_4_DATA_IN_1_PRECISION_0), // = 8
    .DATA_IN_1_PRECISION_1(add_4_DATA_IN_1_PRECISION_1), // = 3
    .DATA_IN_1_TENSOR_SIZE_DIM_0(add_4_DATA_IN_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_1_PARALLELISM_DIM_0(add_4_DATA_IN_1_PARALLELISM_DIM_0), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_1(add_4_DATA_IN_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_1_PARALLELISM_DIM_1(add_4_DATA_IN_1_PARALLELISM_DIM_1), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_2(add_4_DATA_IN_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_1_PARALLELISM_DIM_2(add_4_DATA_IN_1_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(add_4_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(add_4_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(add_4_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(add_4_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(add_4_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(add_4_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(add_4_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(add_4_DATA_OUT_0_PARALLELISM_DIM_2)
) add_4_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(add_4_data_in_0),
    .data_in_0_valid(add_4_data_in_0_valid),
    .data_in_0_ready(add_4_data_in_0_ready),
        
    .data_in_1(add_4_data_in_1),
    .data_in_1_valid(add_4_data_in_1_valid),
    .data_in_1_ready(add_4_data_in_1_ready),
        
    .data_out_0(add_4_data_out_0),
    .data_out_0_valid(add_4_data_out_0_valid),
    .data_out_0_ready(add_4_data_out_0_ready)
);

// encoder_layer_2_attention_output_layer_norm
norm #(
    .DATA_IN_0_PRECISION_0(encoder_layer_2_attention_output_layer_norm_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_2_attention_output_layer_norm_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_2_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_2_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_2_attention_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_2_attention_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_2_attention_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_2_attention_output_layer_norm_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_2_attention_output_layer_norm_data_in_0),
    .data_in_0_valid(encoder_layer_2_attention_output_layer_norm_data_in_0_valid),
    .data_in_0_ready(encoder_layer_2_attention_output_layer_norm_data_in_0_ready),
        
    .data_out_0(encoder_layer_2_attention_output_layer_norm_data_out_0),
    .data_out_0_valid(encoder_layer_2_attention_output_layer_norm_data_out_0_valid),
    .data_out_0_ready(encoder_layer_2_attention_output_layer_norm_data_out_0_ready)
);

// df_split_5
df_split #(
    .DATA_IN_0_PRECISION_0(df_split_5_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(df_split_5_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(df_split_5_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(df_split_5_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(df_split_5_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(df_split_5_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(df_split_5_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(df_split_5_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(df_split_5_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(df_split_5_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(df_split_5_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(df_split_5_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(df_split_5_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(df_split_5_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(df_split_5_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(df_split_5_DATA_OUT_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_1_PRECISION_0(df_split_5_DATA_OUT_1_PRECISION_0), // = 8
    .DATA_OUT_1_PRECISION_1(df_split_5_DATA_OUT_1_PRECISION_1), // = 3
    .DATA_OUT_1_TENSOR_SIZE_DIM_0(df_split_5_DATA_OUT_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_1_PARALLELISM_DIM_0(df_split_5_DATA_OUT_1_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_1_TENSOR_SIZE_DIM_1(df_split_5_DATA_OUT_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_1_PARALLELISM_DIM_1(df_split_5_DATA_OUT_1_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_1_TENSOR_SIZE_DIM_2(df_split_5_DATA_OUT_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_1_PARALLELISM_DIM_2(df_split_5_DATA_OUT_1_PARALLELISM_DIM_2)
) df_split_5_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(df_split_5_data_in_0),
    .data_in_0_valid(df_split_5_data_in_0_valid),
    .data_in_0_ready(df_split_5_data_in_0_ready),
        
    .data_out_0(df_split_5_data_out_0),
    .data_out_0_valid(df_split_5_data_out_0_valid),
    .data_out_0_ready(df_split_5_data_out_0_ready),
        
    .data_out_1(df_split_5_data_out_1),
    .data_out_1_valid(df_split_5_data_out_1_valid),
    .data_out_1_ready(df_split_5_data_out_1_ready)
);

// getitem_10
buffer #(
    .DATA_IN_0_PRECISION_0(getitem_10_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(getitem_10_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(getitem_10_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(getitem_10_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(getitem_10_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(getitem_10_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(getitem_10_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(getitem_10_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .SELECT(getitem_10_SELECT), // = 0
    .DATA_OUT_0_PRECISION_0(getitem_10_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(getitem_10_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(getitem_10_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(getitem_10_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(getitem_10_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(getitem_10_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(getitem_10_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(getitem_10_DATA_OUT_0_PARALLELISM_DIM_2)
) getitem_10_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0       (getitem_10_data_in_0),
    .data_in_0_valid (getitem_10_data_in_0_valid),
    .data_in_0_ready (getitem_10_data_in_0_ready),
    
    .data_out_0       (getitem_10_data_out_0),
    .data_out_0_valid (getitem_10_data_out_0_valid),
    .data_out_0_ready (getitem_10_data_out_0_ready)
);

// getitem_11
buffer #(
    .DATA_IN_1_PRECISION_0(getitem_11_DATA_IN_1_PRECISION_0), // = 8
    .DATA_IN_1_PRECISION_1(getitem_11_DATA_IN_1_PRECISION_1), // = 3
    .DATA_IN_1_TENSOR_SIZE_DIM_0(getitem_11_DATA_IN_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_1_PARALLELISM_DIM_0(getitem_11_DATA_IN_1_PARALLELISM_DIM_0), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_1(getitem_11_DATA_IN_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_1_PARALLELISM_DIM_1(getitem_11_DATA_IN_1_PARALLELISM_DIM_1), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_2(getitem_11_DATA_IN_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_1_PARALLELISM_DIM_2(getitem_11_DATA_IN_1_PARALLELISM_DIM_2), // = 1
    .SELECT(getitem_11_SELECT), // = 1
    .DATA_OUT_0_PRECISION_0(getitem_11_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(getitem_11_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(getitem_11_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(getitem_11_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(getitem_11_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(getitem_11_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(getitem_11_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(getitem_11_DATA_OUT_0_PARALLELISM_DIM_2)
) getitem_11_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0       (getitem_11_data_in_0),
    .data_in_0_valid (getitem_11_data_in_0_valid),
    .data_in_0_ready (getitem_11_data_in_0_ready),
    
    .data_out_0       (getitem_11_data_out_0),
    .data_out_0_valid (getitem_11_data_out_0_valid),
    .data_out_0_ready (getitem_11_data_out_0_ready)
);

// encoder_layer_2_intermediate_dense
fixed_linear #(
    .DATA_IN_0_PRECISION_0(encoder_layer_2_intermediate_dense_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_2_intermediate_dense_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_2_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_2_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_2_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_2_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_2_intermediate_dense_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_2_intermediate_dense_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .WEIGHT_PRECISION_0(encoder_layer_2_intermediate_dense_WEIGHT_PRECISION_0), // = 8
    .WEIGHT_PRECISION_1(encoder_layer_2_intermediate_dense_WEIGHT_PRECISION_1), // = 3
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_2_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_0), // = 96
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_2_intermediate_dense_WEIGHT_PARALLELISM_DIM_0), // = 4
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_2_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_1), // = 384
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_2_intermediate_dense_WEIGHT_PARALLELISM_DIM_1), // = 4
    .BIAS_PRECISION_0(encoder_layer_2_intermediate_dense_BIAS_PRECISION_0), // = 8
    .BIAS_PRECISION_1(encoder_layer_2_intermediate_dense_BIAS_PRECISION_1), // = 3
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_2_intermediate_dense_BIAS_TENSOR_SIZE_DIM_0), // = 384
    .BIAS_PARALLELISM_DIM_0(encoder_layer_2_intermediate_dense_BIAS_PARALLELISM_DIM_0), // = 4
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_2_intermediate_dense_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .BIAS_PARALLELISM_DIM_1(encoder_layer_2_intermediate_dense_BIAS_PARALLELISM_DIM_1), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_2_intermediate_dense_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_2_intermediate_dense_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_2_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 384
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_2_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_2_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_2_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_2_intermediate_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_2_intermediate_dense_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_2_intermediate_dense_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_2_intermediate_dense_data_in_0),
    .data_in_0_valid(encoder_layer_2_intermediate_dense_data_in_0_valid),
    .data_in_0_ready(encoder_layer_2_intermediate_dense_data_in_0_ready),
        
    .weight(encoder_layer_2_intermediate_dense_weight),
    .weight_valid(encoder_layer_2_intermediate_dense_weight_valid),
    .weight_ready(encoder_layer_2_intermediate_dense_weight_ready),
        
    .bias(encoder_layer_2_intermediate_dense_bias),
    .bias_valid(encoder_layer_2_intermediate_dense_bias_valid),
    .bias_ready(encoder_layer_2_intermediate_dense_bias_ready),
        
    .data_out_0(encoder_layer_2_intermediate_dense_data_out_0),
    .data_out_0_valid(encoder_layer_2_intermediate_dense_data_out_0_valid),
    .data_out_0_ready(encoder_layer_2_intermediate_dense_data_out_0_ready)
);

encoder_layer_2_intermediate_dense_weight_source #(
    .WEIGHT_PRECISION_0(encoder_layer_2_intermediate_dense_WEIGHT_PRECISION_0),
    .WEIGHT_PRECISION_1(encoder_layer_2_intermediate_dense_WEIGHT_PRECISION_1),
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_2_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_0),
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_2_intermediate_dense_WEIGHT_PARALLELISM_DIM_0),
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_2_intermediate_dense_WEIGHT_TENSOR_SIZE_DIM_1),
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_2_intermediate_dense_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_2_intermediate_dense_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_2_intermediate_dense_weight),
    .data_out_ready(encoder_layer_2_intermediate_dense_weight_ready),
    .data_out_valid(encoder_layer_2_intermediate_dense_weight_valid)
);

encoder_layer_2_intermediate_dense_bias_source #(
    .BIAS_PRECISION_0(encoder_layer_2_intermediate_dense_BIAS_PRECISION_0),
    .BIAS_PRECISION_1(encoder_layer_2_intermediate_dense_BIAS_PRECISION_1),
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_2_intermediate_dense_BIAS_TENSOR_SIZE_DIM_0),
    .BIAS_PARALLELISM_DIM_0(encoder_layer_2_intermediate_dense_BIAS_PARALLELISM_DIM_0),
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_2_intermediate_dense_BIAS_TENSOR_SIZE_DIM_1),
    .BIAS_PARALLELISM_DIM_1(encoder_layer_2_intermediate_dense_BIAS_PARALLELISM_DIM_1)
) encoder_layer_2_intermediate_dense_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_2_intermediate_dense_bias),
    .data_out_ready(encoder_layer_2_intermediate_dense_bias_ready),
    .data_out_valid(encoder_layer_2_intermediate_dense_bias_valid)
);

// encoder_layer_2_intermediate_intermediate_act_fn
fixed_gelu #(
    .DATA_IN_0_PRECISION_0(encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 384
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_2_intermediate_intermediate_act_fn_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 384
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_2_intermediate_intermediate_act_fn_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_2_intermediate_intermediate_act_fn_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_2_intermediate_intermediate_act_fn_data_in_0),
    .data_in_0_valid(encoder_layer_2_intermediate_intermediate_act_fn_data_in_0_valid),
    .data_in_0_ready(encoder_layer_2_intermediate_intermediate_act_fn_data_in_0_ready),
        
    .data_out_0(encoder_layer_2_intermediate_intermediate_act_fn_data_out_0),
    .data_out_0_valid(encoder_layer_2_intermediate_intermediate_act_fn_data_out_0_valid),
    .data_out_0_ready(encoder_layer_2_intermediate_intermediate_act_fn_data_out_0_ready)
);

// encoder_layer_2_output_dense
fixed_linear #(
    .DATA_IN_0_PRECISION_0(encoder_layer_2_output_dense_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_2_output_dense_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_2_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 384
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_2_output_dense_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_2_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_2_output_dense_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_2_output_dense_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_2_output_dense_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .WEIGHT_PRECISION_0(encoder_layer_2_output_dense_WEIGHT_PRECISION_0), // = 8
    .WEIGHT_PRECISION_1(encoder_layer_2_output_dense_WEIGHT_PRECISION_1), // = 3
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_2_output_dense_WEIGHT_TENSOR_SIZE_DIM_0), // = 384
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_2_output_dense_WEIGHT_PARALLELISM_DIM_0), // = 4
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_2_output_dense_WEIGHT_TENSOR_SIZE_DIM_1), // = 96
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_2_output_dense_WEIGHT_PARALLELISM_DIM_1), // = 4
    .BIAS_PRECISION_0(encoder_layer_2_output_dense_BIAS_PRECISION_0), // = 8
    .BIAS_PRECISION_1(encoder_layer_2_output_dense_BIAS_PRECISION_1), // = 3
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_2_output_dense_BIAS_TENSOR_SIZE_DIM_0), // = 96
    .BIAS_PARALLELISM_DIM_0(encoder_layer_2_output_dense_BIAS_PARALLELISM_DIM_0), // = 4
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_2_output_dense_BIAS_TENSOR_SIZE_DIM_1), // = 1
    .BIAS_PARALLELISM_DIM_1(encoder_layer_2_output_dense_BIAS_PARALLELISM_DIM_1), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_2_output_dense_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_2_output_dense_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_2_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_2_output_dense_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_2_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_2_output_dense_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_2_output_dense_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_2_output_dense_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_2_output_dense_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_2_output_dense_data_in_0),
    .data_in_0_valid(encoder_layer_2_output_dense_data_in_0_valid),
    .data_in_0_ready(encoder_layer_2_output_dense_data_in_0_ready),
        
    .weight(encoder_layer_2_output_dense_weight),
    .weight_valid(encoder_layer_2_output_dense_weight_valid),
    .weight_ready(encoder_layer_2_output_dense_weight_ready),
        
    .bias(encoder_layer_2_output_dense_bias),
    .bias_valid(encoder_layer_2_output_dense_bias_valid),
    .bias_ready(encoder_layer_2_output_dense_bias_ready),
        
    .data_out_0(encoder_layer_2_output_dense_data_out_0),
    .data_out_0_valid(encoder_layer_2_output_dense_data_out_0_valid),
    .data_out_0_ready(encoder_layer_2_output_dense_data_out_0_ready)
);

encoder_layer_2_output_dense_weight_source #(
    .WEIGHT_PRECISION_0(encoder_layer_2_output_dense_WEIGHT_PRECISION_0),
    .WEIGHT_PRECISION_1(encoder_layer_2_output_dense_WEIGHT_PRECISION_1),
    .WEIGHT_TENSOR_SIZE_DIM_0(encoder_layer_2_output_dense_WEIGHT_TENSOR_SIZE_DIM_0),
    .WEIGHT_PARALLELISM_DIM_0(encoder_layer_2_output_dense_WEIGHT_PARALLELISM_DIM_0),
    .WEIGHT_TENSOR_SIZE_DIM_1(encoder_layer_2_output_dense_WEIGHT_TENSOR_SIZE_DIM_1),
    .WEIGHT_PARALLELISM_DIM_1(encoder_layer_2_output_dense_WEIGHT_PARALLELISM_DIM_1)
) encoder_layer_2_output_dense_weight_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_2_output_dense_weight),
    .data_out_ready(encoder_layer_2_output_dense_weight_ready),
    .data_out_valid(encoder_layer_2_output_dense_weight_valid)
);

encoder_layer_2_output_dense_bias_source #(
    .BIAS_PRECISION_0(encoder_layer_2_output_dense_BIAS_PRECISION_0),
    .BIAS_PRECISION_1(encoder_layer_2_output_dense_BIAS_PRECISION_1),
    .BIAS_TENSOR_SIZE_DIM_0(encoder_layer_2_output_dense_BIAS_TENSOR_SIZE_DIM_0),
    .BIAS_PARALLELISM_DIM_0(encoder_layer_2_output_dense_BIAS_PARALLELISM_DIM_0),
    .BIAS_TENSOR_SIZE_DIM_1(encoder_layer_2_output_dense_BIAS_TENSOR_SIZE_DIM_1),
    .BIAS_PARALLELISM_DIM_1(encoder_layer_2_output_dense_BIAS_PARALLELISM_DIM_1)
) encoder_layer_2_output_dense_bias_source_0 (
    .clk(clk),
    .rst(rst),
    .data_out(encoder_layer_2_output_dense_bias),
    .data_out_ready(encoder_layer_2_output_dense_bias_ready),
    .data_out_valid(encoder_layer_2_output_dense_bias_valid)
);

// add_5
fixed_adder #(
    .DATA_IN_0_PRECISION_0(add_5_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(add_5_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(add_5_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(add_5_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(add_5_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(add_5_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(add_5_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(add_5_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_IN_1_PRECISION_0(add_5_DATA_IN_1_PRECISION_0), // = 8
    .DATA_IN_1_PRECISION_1(add_5_DATA_IN_1_PRECISION_1), // = 3
    .DATA_IN_1_TENSOR_SIZE_DIM_0(add_5_DATA_IN_1_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_1_PARALLELISM_DIM_0(add_5_DATA_IN_1_PARALLELISM_DIM_0), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_1(add_5_DATA_IN_1_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_1_PARALLELISM_DIM_1(add_5_DATA_IN_1_PARALLELISM_DIM_1), // = 4
    .DATA_IN_1_TENSOR_SIZE_DIM_2(add_5_DATA_IN_1_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_1_PARALLELISM_DIM_2(add_5_DATA_IN_1_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(add_5_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(add_5_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(add_5_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(add_5_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(add_5_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(add_5_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(add_5_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(add_5_DATA_OUT_0_PARALLELISM_DIM_2)
) add_5_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(add_5_data_in_0),
    .data_in_0_valid(add_5_data_in_0_valid),
    .data_in_0_ready(add_5_data_in_0_ready),
        
    .data_in_1(add_5_data_in_1),
    .data_in_1_valid(add_5_data_in_1_valid),
    .data_in_1_ready(add_5_data_in_1_ready),
        
    .data_out_0(add_5_data_out_0),
    .data_out_0_valid(add_5_data_out_0_valid),
    .data_out_0_ready(add_5_data_out_0_ready)
);

// encoder_layer_2_output_layer_norm
norm #(
    .DATA_IN_0_PRECISION_0(encoder_layer_2_output_layer_norm_DATA_IN_0_PRECISION_0), // = 8
    .DATA_IN_0_PRECISION_1(encoder_layer_2_output_layer_norm_DATA_IN_0_PRECISION_1), // = 3
    .DATA_IN_0_TENSOR_SIZE_DIM_0(encoder_layer_2_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_IN_0_PARALLELISM_DIM_0(encoder_layer_2_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_0), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_1(encoder_layer_2_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_IN_0_PARALLELISM_DIM_1(encoder_layer_2_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_1), // = 4
    .DATA_IN_0_TENSOR_SIZE_DIM_2(encoder_layer_2_output_layer_norm_DATA_IN_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_IN_0_PARALLELISM_DIM_2(encoder_layer_2_output_layer_norm_DATA_IN_0_PARALLELISM_DIM_2), // = 1
    .DATA_OUT_0_PRECISION_0(encoder_layer_2_output_layer_norm_DATA_OUT_0_PRECISION_0), // = 8
    .DATA_OUT_0_PRECISION_1(encoder_layer_2_output_layer_norm_DATA_OUT_0_PRECISION_1), // = 3
    .DATA_OUT_0_TENSOR_SIZE_DIM_0(encoder_layer_2_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_0), // = 96
    .DATA_OUT_0_PARALLELISM_DIM_0(encoder_layer_2_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_0), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_1(encoder_layer_2_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_1), // = 4
    .DATA_OUT_0_PARALLELISM_DIM_1(encoder_layer_2_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_1), // = 4
    .DATA_OUT_0_TENSOR_SIZE_DIM_2(encoder_layer_2_output_layer_norm_DATA_OUT_0_TENSOR_SIZE_DIM_2), // = 1
    .DATA_OUT_0_PARALLELISM_DIM_2(encoder_layer_2_output_layer_norm_DATA_OUT_0_PARALLELISM_DIM_2)
) encoder_layer_2_output_layer_norm_inst (
    .clk(clk),
    .rst(rst),

    .data_in_0(encoder_layer_2_output_layer_norm_data_in_0),
    .data_in_0_valid(encoder_layer_2_output_layer_norm_data_in_0_valid),
    .data_in_0_ready(encoder_layer_2_output_layer_norm_data_in_0_ready),
        
    .data_out_0(encoder_layer_2_output_layer_norm_data_out_0),
    .data_out_0_valid(encoder_layer_2_output_layer_norm_data_out_0_valid),
    .data_out_0_ready(encoder_layer_2_output_layer_norm_data_out_0_ready)
);


// --------------------------
//   Interconnections
// --------------------------
    
assign data_in_0_ready = df_split_data_in_0_ready;
assign df_split_data_in_0_valid    = data_in_0_valid;
assign df_split_data_in_0    = data_in_0;

assign data_out_0_valid = encoder_layer_2_output_layer_norm_data_out_0_valid;
assign encoder_layer_2_output_layer_norm_data_out_0_ready    = data_out_0_ready;
assign data_out_0 = encoder_layer_2_output_layer_norm_data_out_0;

assign df_split_data_out_0_ready  = getitem_data_in_0_ready;
assign getitem_data_in_0_valid    = df_split_data_out_0_valid;
assign getitem_data_in_0 = df_split_data_out_0;

assign df_split_data_out_1_ready  = getitem_1_data_in_0_ready;
assign getitem_1_data_in_0_valid    = df_split_data_out_1_valid;
assign getitem_1_data_in_0 = df_split_data_out_1;

assign getitem_data_out_0_ready  = encoder_layer_0_attention_self_data_in_0_ready;
assign encoder_layer_0_attention_self_data_in_0_valid    = getitem_data_out_0_valid;
assign encoder_layer_0_attention_self_data_in_0 = getitem_data_out_0;

assign encoder_layer_0_attention_self_data_out_0_ready  = encoder_layer_0_attention_output_dense_data_in_0_ready;
assign encoder_layer_0_attention_output_dense_data_in_0_valid    = encoder_layer_0_attention_self_data_out_0_valid;
assign encoder_layer_0_attention_output_dense_data_in_0 = encoder_layer_0_attention_self_data_out_0;

assign encoder_layer_0_attention_output_dense_data_out_0_ready  = add_data_in_0_ready;
assign add_data_in_0_valid    = encoder_layer_0_attention_output_dense_data_out_0_valid;
assign add_data_in_0 = encoder_layer_0_attention_output_dense_data_out_0;

assign getitem_1_data_out_0_ready  = add_data_in_1_ready;
assign add_data_in_1_valid    = getitem_1_data_out_0_valid;
assign add_data_in_1 = getitem_1_data_out_0;

assign add_data_out_0_ready  = encoder_layer_0_attention_output_layer_norm_data_in_0_ready;
assign encoder_layer_0_attention_output_layer_norm_data_in_0_valid    = add_data_out_0_valid;
assign encoder_layer_0_attention_output_layer_norm_data_in_0 = add_data_out_0;

assign encoder_layer_0_attention_output_layer_norm_data_out_0_ready  = df_split_1_data_in_0_ready;
assign df_split_1_data_in_0_valid    = encoder_layer_0_attention_output_layer_norm_data_out_0_valid;
assign df_split_1_data_in_0 = encoder_layer_0_attention_output_layer_norm_data_out_0;

assign df_split_1_data_out_0_ready  = getitem_2_data_in_0_ready;
assign getitem_2_data_in_0_valid    = df_split_1_data_out_0_valid;
assign getitem_2_data_in_0 = df_split_1_data_out_0;

assign df_split_1_data_out_1_ready  = getitem_3_data_in_0_ready;
assign getitem_3_data_in_0_valid    = df_split_1_data_out_1_valid;
assign getitem_3_data_in_0 = df_split_1_data_out_1;

assign getitem_2_data_out_0_ready  = encoder_layer_0_intermediate_dense_data_in_0_ready;
assign encoder_layer_0_intermediate_dense_data_in_0_valid    = getitem_2_data_out_0_valid;
assign encoder_layer_0_intermediate_dense_data_in_0 = getitem_2_data_out_0;

assign encoder_layer_0_intermediate_dense_data_out_0_ready  = encoder_layer_0_intermediate_intermediate_act_fn_data_in_0_ready;
assign encoder_layer_0_intermediate_intermediate_act_fn_data_in_0_valid    = encoder_layer_0_intermediate_dense_data_out_0_valid;
assign encoder_layer_0_intermediate_intermediate_act_fn_data_in_0 = encoder_layer_0_intermediate_dense_data_out_0;

assign encoder_layer_0_intermediate_intermediate_act_fn_data_out_0_ready  = encoder_layer_0_output_dense_data_in_0_ready;
assign encoder_layer_0_output_dense_data_in_0_valid    = encoder_layer_0_intermediate_intermediate_act_fn_data_out_0_valid;
assign encoder_layer_0_output_dense_data_in_0 = encoder_layer_0_intermediate_intermediate_act_fn_data_out_0;

assign encoder_layer_0_output_dense_data_out_0_ready  = add_1_data_in_0_ready;
assign add_1_data_in_0_valid    = encoder_layer_0_output_dense_data_out_0_valid;
assign add_1_data_in_0 = encoder_layer_0_output_dense_data_out_0;

assign getitem_3_data_out_0_ready  = add_1_data_in_1_ready;
assign add_1_data_in_1_valid    = getitem_3_data_out_0_valid;
assign add_1_data_in_1 = getitem_3_data_out_0;

assign add_1_data_out_0_ready  = encoder_layer_0_output_layer_norm_data_in_0_ready;
assign encoder_layer_0_output_layer_norm_data_in_0_valid    = add_1_data_out_0_valid;
assign encoder_layer_0_output_layer_norm_data_in_0 = add_1_data_out_0;

assign encoder_layer_0_output_layer_norm_data_out_0_ready  = df_split_2_data_in_0_ready;
assign df_split_2_data_in_0_valid    = encoder_layer_0_output_layer_norm_data_out_0_valid;
assign df_split_2_data_in_0 = encoder_layer_0_output_layer_norm_data_out_0;

assign df_split_2_data_out_0_ready  = getitem_4_data_in_0_ready;
assign getitem_4_data_in_0_valid    = df_split_2_data_out_0_valid;
assign getitem_4_data_in_0 = df_split_2_data_out_0;

assign df_split_2_data_out_1_ready  = getitem_5_data_in_0_ready;
assign getitem_5_data_in_0_valid    = df_split_2_data_out_1_valid;
assign getitem_5_data_in_0 = df_split_2_data_out_1;

assign getitem_4_data_out_0_ready  = encoder_layer_1_attention_self_data_in_0_ready;
assign encoder_layer_1_attention_self_data_in_0_valid    = getitem_4_data_out_0_valid;
assign encoder_layer_1_attention_self_data_in_0 = getitem_4_data_out_0;

assign encoder_layer_1_attention_self_data_out_0_ready  = encoder_layer_1_attention_output_dense_data_in_0_ready;
assign encoder_layer_1_attention_output_dense_data_in_0_valid    = encoder_layer_1_attention_self_data_out_0_valid;
assign encoder_layer_1_attention_output_dense_data_in_0 = encoder_layer_1_attention_self_data_out_0;

assign encoder_layer_1_attention_output_dense_data_out_0_ready  = add_2_data_in_0_ready;
assign add_2_data_in_0_valid    = encoder_layer_1_attention_output_dense_data_out_0_valid;
assign add_2_data_in_0 = encoder_layer_1_attention_output_dense_data_out_0;

assign getitem_5_data_out_0_ready  = add_2_data_in_1_ready;
assign add_2_data_in_1_valid    = getitem_5_data_out_0_valid;
assign add_2_data_in_1 = getitem_5_data_out_0;

assign add_2_data_out_0_ready  = encoder_layer_1_attention_output_layer_norm_data_in_0_ready;
assign encoder_layer_1_attention_output_layer_norm_data_in_0_valid    = add_2_data_out_0_valid;
assign encoder_layer_1_attention_output_layer_norm_data_in_0 = add_2_data_out_0;

assign encoder_layer_1_attention_output_layer_norm_data_out_0_ready  = df_split_3_data_in_0_ready;
assign df_split_3_data_in_0_valid    = encoder_layer_1_attention_output_layer_norm_data_out_0_valid;
assign df_split_3_data_in_0 = encoder_layer_1_attention_output_layer_norm_data_out_0;

assign df_split_3_data_out_0_ready  = getitem_6_data_in_0_ready;
assign getitem_6_data_in_0_valid    = df_split_3_data_out_0_valid;
assign getitem_6_data_in_0 = df_split_3_data_out_0;

assign df_split_3_data_out_1_ready  = getitem_7_data_in_0_ready;
assign getitem_7_data_in_0_valid    = df_split_3_data_out_1_valid;
assign getitem_7_data_in_0 = df_split_3_data_out_1;

assign getitem_6_data_out_0_ready  = encoder_layer_1_intermediate_dense_data_in_0_ready;
assign encoder_layer_1_intermediate_dense_data_in_0_valid    = getitem_6_data_out_0_valid;
assign encoder_layer_1_intermediate_dense_data_in_0 = getitem_6_data_out_0;

assign encoder_layer_1_intermediate_dense_data_out_0_ready  = encoder_layer_1_intermediate_intermediate_act_fn_data_in_0_ready;
assign encoder_layer_1_intermediate_intermediate_act_fn_data_in_0_valid    = encoder_layer_1_intermediate_dense_data_out_0_valid;
assign encoder_layer_1_intermediate_intermediate_act_fn_data_in_0 = encoder_layer_1_intermediate_dense_data_out_0;

assign encoder_layer_1_intermediate_intermediate_act_fn_data_out_0_ready  = encoder_layer_1_output_dense_data_in_0_ready;
assign encoder_layer_1_output_dense_data_in_0_valid    = encoder_layer_1_intermediate_intermediate_act_fn_data_out_0_valid;
assign encoder_layer_1_output_dense_data_in_0 = encoder_layer_1_intermediate_intermediate_act_fn_data_out_0;

assign encoder_layer_1_output_dense_data_out_0_ready  = add_3_data_in_0_ready;
assign add_3_data_in_0_valid    = encoder_layer_1_output_dense_data_out_0_valid;
assign add_3_data_in_0 = encoder_layer_1_output_dense_data_out_0;

assign getitem_7_data_out_0_ready  = add_3_data_in_1_ready;
assign add_3_data_in_1_valid    = getitem_7_data_out_0_valid;
assign add_3_data_in_1 = getitem_7_data_out_0;

assign add_3_data_out_0_ready  = encoder_layer_1_output_layer_norm_data_in_0_ready;
assign encoder_layer_1_output_layer_norm_data_in_0_valid    = add_3_data_out_0_valid;
assign encoder_layer_1_output_layer_norm_data_in_0 = add_3_data_out_0;

assign encoder_layer_1_output_layer_norm_data_out_0_ready  = df_split_4_data_in_0_ready;
assign df_split_4_data_in_0_valid    = encoder_layer_1_output_layer_norm_data_out_0_valid;
assign df_split_4_data_in_0 = encoder_layer_1_output_layer_norm_data_out_0;

assign df_split_4_data_out_0_ready  = getitem_8_data_in_0_ready;
assign getitem_8_data_in_0_valid    = df_split_4_data_out_0_valid;
assign getitem_8_data_in_0 = df_split_4_data_out_0;

assign df_split_4_data_out_1_ready  = getitem_9_data_in_0_ready;
assign getitem_9_data_in_0_valid    = df_split_4_data_out_1_valid;
assign getitem_9_data_in_0 = df_split_4_data_out_1;

assign getitem_8_data_out_0_ready  = encoder_layer_2_attention_self_data_in_0_ready;
assign encoder_layer_2_attention_self_data_in_0_valid    = getitem_8_data_out_0_valid;
assign encoder_layer_2_attention_self_data_in_0 = getitem_8_data_out_0;

assign encoder_layer_2_attention_self_data_out_0_ready  = encoder_layer_2_attention_output_dense_data_in_0_ready;
assign encoder_layer_2_attention_output_dense_data_in_0_valid    = encoder_layer_2_attention_self_data_out_0_valid;
assign encoder_layer_2_attention_output_dense_data_in_0 = encoder_layer_2_attention_self_data_out_0;

assign encoder_layer_2_attention_output_dense_data_out_0_ready  = add_4_data_in_0_ready;
assign add_4_data_in_0_valid    = encoder_layer_2_attention_output_dense_data_out_0_valid;
assign add_4_data_in_0 = encoder_layer_2_attention_output_dense_data_out_0;

assign getitem_9_data_out_0_ready  = add_4_data_in_1_ready;
assign add_4_data_in_1_valid    = getitem_9_data_out_0_valid;
assign add_4_data_in_1 = getitem_9_data_out_0;

assign add_4_data_out_0_ready  = encoder_layer_2_attention_output_layer_norm_data_in_0_ready;
assign encoder_layer_2_attention_output_layer_norm_data_in_0_valid    = add_4_data_out_0_valid;
assign encoder_layer_2_attention_output_layer_norm_data_in_0 = add_4_data_out_0;

assign encoder_layer_2_attention_output_layer_norm_data_out_0_ready  = df_split_5_data_in_0_ready;
assign df_split_5_data_in_0_valid    = encoder_layer_2_attention_output_layer_norm_data_out_0_valid;
assign df_split_5_data_in_0 = encoder_layer_2_attention_output_layer_norm_data_out_0;

assign df_split_5_data_out_0_ready  = getitem_10_data_in_0_ready;
assign getitem_10_data_in_0_valid    = df_split_5_data_out_0_valid;
assign getitem_10_data_in_0 = df_split_5_data_out_0;

assign df_split_5_data_out_1_ready  = getitem_11_data_in_0_ready;
assign getitem_11_data_in_0_valid    = df_split_5_data_out_1_valid;
assign getitem_11_data_in_0 = df_split_5_data_out_1;

assign getitem_10_data_out_0_ready  = encoder_layer_2_intermediate_dense_data_in_0_ready;
assign encoder_layer_2_intermediate_dense_data_in_0_valid    = getitem_10_data_out_0_valid;
assign encoder_layer_2_intermediate_dense_data_in_0 = getitem_10_data_out_0;

assign encoder_layer_2_intermediate_dense_data_out_0_ready  = encoder_layer_2_intermediate_intermediate_act_fn_data_in_0_ready;
assign encoder_layer_2_intermediate_intermediate_act_fn_data_in_0_valid    = encoder_layer_2_intermediate_dense_data_out_0_valid;
assign encoder_layer_2_intermediate_intermediate_act_fn_data_in_0 = encoder_layer_2_intermediate_dense_data_out_0;

assign encoder_layer_2_intermediate_intermediate_act_fn_data_out_0_ready  = encoder_layer_2_output_dense_data_in_0_ready;
assign encoder_layer_2_output_dense_data_in_0_valid    = encoder_layer_2_intermediate_intermediate_act_fn_data_out_0_valid;
assign encoder_layer_2_output_dense_data_in_0 = encoder_layer_2_intermediate_intermediate_act_fn_data_out_0;

assign encoder_layer_2_output_dense_data_out_0_ready  = add_5_data_in_0_ready;
assign add_5_data_in_0_valid    = encoder_layer_2_output_dense_data_out_0_valid;
assign add_5_data_in_0 = encoder_layer_2_output_dense_data_out_0;

assign getitem_11_data_out_0_ready  = add_5_data_in_1_ready;
assign add_5_data_in_1_valid    = getitem_11_data_out_0_valid;
assign add_5_data_in_1 = getitem_11_data_out_0;

assign add_5_data_out_0_ready  = encoder_layer_2_output_layer_norm_data_in_0_ready;
assign encoder_layer_2_output_layer_norm_data_in_0_valid    = add_5_data_out_0_valid;
assign encoder_layer_2_output_layer_norm_data_in_0 = add_5_data_out_0;

endmodule
    