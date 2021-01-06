##########################
BMV2_PATH=~/p4-projects/behavioral-model
P4C_BM_PATH=~/p4-projects/p4c-bm
##########################

THIS_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

P4C_BM_SCRIPT=$P4C_BM_PATH/p4c_bm/__main__.py
SWITCH_PATH=$BMV2_PATH/targets/simple_switch/simple_switch
CLI_PATH=$BMV2_PATH/targets/simple_switch/sswitch_CLI

sudo PYTHONPATH=$PYTHONPATH:$BMV2_PATH/mininet/ python ~/p4-projects/topk/topology/k_ary_fat_tree_topo.py \
    --behavioral-exe $BMV2_PATH/targets/simple_switch/simple_switch \
    --switch ~/p4-projects/topk/topk_for_daiet.json \
    --cli $CLI_PATH
