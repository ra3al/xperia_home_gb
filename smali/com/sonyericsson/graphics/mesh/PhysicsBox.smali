.class public Lcom/sonyericsson/graphics/mesh/PhysicsBox;
.super Ljava/lang/Object;
.source "PhysicsBox.java"


# static fields
.field private static final MAX_DT:F = 0.1f

.field private static final TIME_STEP:F = 0.02f


# instance fields
.field private final mConstraintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/graphics/mesh/Constraint;",
            ">;"
        }
    .end annotation
.end field

.field private mDamping:F

.field private final mVertexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/graphics/mesh/Vertex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;F)V
    .locals 0
    .parameter
    .parameter
    .parameter "damping"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/graphics/mesh/Vertex;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/graphics/mesh/Constraint;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, vertexList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/graphics/mesh/Vertex;>;"
    .local p2, constraintList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/graphics/mesh/Constraint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    .line 51
    iput-object p2, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mConstraintList:Ljava/util/List;

    .line 52
    iput p3, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mDamping:F

    .line 53
    return-void
.end method

.method private updateAcceleration()V
    .locals 7

    .prologue
    .line 126
    iget-object v5, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 127
    .local v4, vertexListSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 128
    iget-object v5, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/graphics/mesh/Vertex;

    .line 129
    .local v3, v:Lcom/sonyericsson/graphics/mesh/Vertex;
    iget v5, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mDamping:F

    neg-float v5, v5

    iget v6, v3, Lcom/sonyericsson/graphics/mesh/Vertex;->vx:F

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/sonyericsson/graphics/mesh/Vertex;->ax:F

    .line 130
    iget v5, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mDamping:F

    neg-float v5, v5

    iget v6, v3, Lcom/sonyericsson/graphics/mesh/Vertex;->vy:F

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/sonyericsson/graphics/mesh/Vertex;->ay:F

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v3           #v:Lcom/sonyericsson/graphics/mesh/Vertex;
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mConstraintList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 134
    .local v1, constraintListSize:I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 135
    iget-object v5, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mConstraintList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/graphics/mesh/Constraint;

    .line 136
    .local v0, c:Lcom/sonyericsson/graphics/mesh/Constraint;
    invoke-virtual {v0}, Lcom/sonyericsson/graphics/mesh/Constraint;->applyConstraint()V

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 138
    .end local v0           #c:Lcom/sonyericsson/graphics/mesh/Constraint;
    :cond_1
    return-void
.end method

.method private updatePositions(F)V
    .locals 7
    .parameter "dt"

    .prologue
    const/high16 v6, 0x3f00

    .line 160
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 161
    .local v2, vertexListSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 162
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/graphics/mesh/Vertex;

    .line 163
    .local v1, v:Lcom/sonyericsson/graphics/mesh/Vertex;
    iget v3, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    iget v4, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->vx:F

    mul-float/2addr v4, p1

    iget v5, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->ax:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, p1

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    .line 164
    iget v3, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    iget v4, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->vy:F

    mul-float/2addr v4, p1

    iget v5, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->ay:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, p1

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v1           #v:Lcom/sonyericsson/graphics/mesh/Vertex;
    :cond_0
    return-void
.end method

.method private updateVelocities(F)V
    .locals 5
    .parameter "dt"

    .prologue
    .line 146
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 147
    .local v2, vertexListSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 148
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/graphics/mesh/Vertex;

    .line 149
    .local v1, v:Lcom/sonyericsson/graphics/mesh/Vertex;
    iget v3, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->vx:F

    iget v4, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->ax:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->vx:F

    .line 150
    iget v3, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->vy:F

    iget v4, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->ay:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->vy:F

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v1           #v:Lcom/sonyericsson/graphics/mesh/Vertex;
    :cond_0
    return-void
.end method


# virtual methods
.method public getDamping()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mDamping:F

    return v0
.end method

.method public setDamping(F)V
    .locals 0
    .parameter "damping"

    .prologue
    .line 61
    iput p1, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mDamping:F

    .line 62
    return-void
.end method

.method public update(F)Z
    .locals 8
    .parameter "dt"

    .prologue
    const/high16 v7, 0x3f00

    .line 80
    const v6, 0x3dcccccd

    cmpl-float v6, p1, v6

    if-lez v6, :cond_0

    .line 81
    const p1, 0x3dcccccd

    .line 86
    :cond_0
    const v6, 0x3ca3d70a

    invoke-static {p1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 87
    .local v0, d_dt:F
    sub-float/2addr p1, v0

    .line 88
    invoke-direct {p0}, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->updateAcceleration()V

    .line 89
    invoke-direct {p0, v0}, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->updatePositions(F)V

    .line 90
    mul-float v6, v0, v7

    invoke-direct {p0, v6}, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->updateVelocities(F)V

    .line 91
    invoke-direct {p0}, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->updateAcceleration()V

    .line 92
    mul-float v6, v0, v7

    invoke-direct {p0, v6}, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->updateVelocities(F)V

    .line 94
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-gtz v6, :cond_0

    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, maxAbsAcceleration:F
    const/4 v3, 0x0

    .line 98
    .local v3, maxAbsVelocity:F
    iget-object v6, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 99
    .local v5, vertexListSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_5

    .line 100
    iget-object v6, p0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/graphics/mesh/Vertex;

    .line 101
    .local v4, v:Lcom/sonyericsson/graphics/mesh/Vertex;
    iget v6, v4, Lcom/sonyericsson/graphics/mesh/Vertex;->ax:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_1

    .line 102
    iget v6, v4, Lcom/sonyericsson/graphics/mesh/Vertex;->ax:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 104
    :cond_1
    iget v6, v4, Lcom/sonyericsson/graphics/mesh/Vertex;->ay:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_2

    .line 105
    iget v6, v4, Lcom/sonyericsson/graphics/mesh/Vertex;->ay:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 107
    :cond_2
    iget v6, v4, Lcom/sonyericsson/graphics/mesh/Vertex;->vx:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v3

    if-lez v6, :cond_3

    .line 108
    iget v6, v4, Lcom/sonyericsson/graphics/mesh/Vertex;->vx:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 110
    :cond_3
    iget v6, v4, Lcom/sonyericsson/graphics/mesh/Vertex;->vy:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v3

    if-lez v6, :cond_4

    .line 111
    iget v6, v4, Lcom/sonyericsson/graphics/mesh/Vertex;->vy:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 99
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v4           #v:Lcom/sonyericsson/graphics/mesh/Vertex;
    :cond_5
    const/high16 v6, 0x42c8

    cmpg-float v6, v2, v6

    if-gez v6, :cond_6

    const/high16 v6, 0x4120

    cmpg-float v6, v3, v6

    if-gez v6, :cond_6

    .line 116
    const/4 v6, 0x0

    .line 119
    :goto_1
    return v6

    :cond_6
    const/4 v6, 0x1

    goto :goto_1
.end method
