
VIS=viewer+tensorboard

# ns-train depth-nerfacto \
#     --data data/nerfstudio/replica_mini/ \
#     --pipeline.model.depth-loss-mult 0.01 \
#     nerfstudio-data \
#     --center-method none \
#     --auto-scale-poses False \
#     --train-split-fraction 0.5
#     # --vis tensorboard \


# ns-train depth-nerfacto \
#     --data data/nerfstudio/rail_depth_semantic/ \
#     --pipeline.model.depth-loss-mult 0.1 \
#     --vis $VIS \
#     nerfstudio-data \
#     --auto-scale-poses False \
#     --scene-scale 8 \
#     --depth-unit-scale-factor 0.0003292138611 \
#     --train-split-fraction 0.9


ns-train semantic-nerfw \
    --data data/nerfstudio/rail_depth_semantic/ \
    --pipeline.model.depth-loss-mult 0.1 \
    --pipeline.model.semantic-loss-weight 0.1 \
    --pipeline.model.pass-semantic-gradients False \
    nerfstudio-data \
    --auto-scale-poses False \
    --scene-scale 8 \
    --depth-unit-scale-factor 0.0003292138611 \
    --train-split-fraction 0.9