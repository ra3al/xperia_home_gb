.class public Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;
.super Ljava/lang/Object;
.source "AppTrayEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;
    }
.end annotation


# instance fields
.field private editorOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

.field private mAnimatorFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

.field private mBadgeOffset:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mDoMirror:Z

.field private mEditingEnabled:Z

.field private mEnabledChecker:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;

.field private mGrid:Lcom/sonyericsson/grid/Grid;

.field private mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

.field private mListener:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

.field private mMinPaneSwitchDuration:I

.field private mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

.field private mNudgeShow:Landroid/view/animation/Animation;

.field private mNudgesEnabled:Z

.field private mOrientationLandscape:Z

.field private mOriginRect:Landroid/graphics/Rect;

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPaneSwitchMarginLeft:I

.field private mPaneSwitchMarginRight:I

.field private mPaneSwitchNudgeOffset:I

.field private mPaneView:Lcom/sonyericsson/paneview/PaneView;

.field private mPreviousHintPane:I

.field private mRightNudge:Lcom/sonyericsson/home/layer/HintView;

.field private mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

.field private mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

.field private standardLongPressListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/grid/Grid;Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 4
    .parameter "context"
    .parameter "view"
    .parameter "modelManager"
    .parameter "animatorFactory"
    .parameter "transferHandler"
    .parameter "grid"
    .parameter "adapter"
    .parameter "packageLoader"

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-boolean v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mNudgesEnabled:Z

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mOriginRect:Landroid/graphics/Rect;

    .line 175
    const v0, 0x7f0e0007

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/paneview/PaneView;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    .line 176
    iput-object p3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    .line 177
    iput-object p4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAnimatorFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    .line 178
    iput-object p6, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 179
    iput-object p7, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    .line 180
    iput-object p8, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 181
    iput-object p5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mBadgeOffset:I

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchMarginLeft:I

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchMarginRight:I

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchNudgeOffset:I

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mMinPaneSwitchDuration:I

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mCellWidth:I

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mCellHeight:I

    .line 198
    const v0, 0x7f0e000e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/HintView;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 199
    const v0, 0x7f0e000f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/HintView;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 202
    const v0, 0x7f04000c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mNudgeShow:Landroid/view/animation/Animation;

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mNudgeShow:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 207
    invoke-direct {p0, p5}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->createStandardLongPressListener(Lcom/sonyericsson/home/transfer/TransferHandler;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->standardLongPressListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 208
    invoke-direct {p0, p5}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->createOnItemLongClickListener(Lcom/sonyericsson/home/transfer/TransferHandler;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->editorOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 209
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->createEnabledChecker()Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mEnabledChecker:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;

    .line 210
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->createTransferTarget()Lcom/sonyericsson/home/transfer/TransferTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sget v1, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->standardLongPressListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAnimatorFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mEditingEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->showNudgeIfNeeded(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->hideNudge()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/grid/Grid;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mGrid:Lcom/sonyericsson/grid/Grid;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mDoMirror:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPreviousHintPane:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPreviousHintPane:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAnimatorFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;Lcom/sonyericsson/animation/Renderer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->dropItem(Lcom/sonyericsson/animation/Renderer;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchMarginLeft:I

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mCellWidth:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchMarginRight:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mBadgeOffset:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mCellHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mListener:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mOriginRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mMinPaneSwitchDuration:I

    return v0
.end method

.method private createEnabledChecker()Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)V

    return-object v0
.end method

.method private createOnItemLongClickListener(Lcom/sonyericsson/home/transfer/TransferHandler;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .parameter "transferHandler"

    .prologue
    .line 510
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;Lcom/sonyericsson/home/transfer/TransferHandler;)V

    return-object v0
.end method

.method private createStandardLongPressListener(Lcom/sonyericsson/home/transfer/TransferHandler;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .parameter "transferHandler"

    .prologue
    .line 274
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;Lcom/sonyericsson/home/transfer/TransferHandler;)V

    return-object v0
.end method

.method private createTransferTarget()Lcom/sonyericsson/home/transfer/TransferTarget;
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)V

    return-object v0
.end method

.method private dropItem(Lcom/sonyericsson/animation/Renderer;)V
    .locals 5
    .parameter "renderer"

    .prologue
    .line 439
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPreviousHintPane:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->permanentlyMakeRoom(I)V

    .line 440
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPreviousHintPane:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->isPaneFull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 441
    if-eqz p1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPreviousHintPane:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->getPaneAbsoluteOffset(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/sonyericsson/animation/Renderer;->offset(IIJ)V

    .line 444
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAnimatorFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getOriginalPickedUpPosition()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->restorePickedUpItem()V

    .line 459
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getNumberOfPanes()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->isPaneEmpty(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->addEmptyPane()V

    .line 462
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->notifyObservers()V

    .line 463
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mListener:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    if-eqz v1, :cond_2

    .line 464
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mListener:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;->onEditEnd()V

    .line 466
    :cond_2
    return-void

    .line 449
    :cond_3
    if-eqz p1, :cond_4

    .line 450
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 451
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/paneview/PaneView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 452
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPreviousHintPane:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->getPaneAbsoluteOffset(I)I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/sonyericsson/animation/Renderer;->offset(IIJ)V

    .line 454
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 455
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAnimatorFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getPickedUpPosition()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 457
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->dropPickedUpItem()V

    goto :goto_0
.end method

.method private hideNudge()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 494
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mNudgesEnabled:Z

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintView;->clearAnimation()V

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintView;->clearAnimation()V

    .line 500
    :cond_0
    return-void
.end method

.method private showNudgeIfNeeded(I)Z
    .locals 8
    .parameter "x"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 469
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    .line 470
    .local v0, currentPane:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getNumberOfPanes()I

    move-result v1

    .line 471
    .local v1, maxPane:I
    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchMarginLeft:I

    iget v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchNudgeOffset:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_3

    .line 472
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mListener:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    invoke-interface {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;->onNudgeHint()V

    .line 473
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mDoMirror:Z

    if-nez v2, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mDoMirror:Z

    if-eqz v2, :cond_7

    sub-int v2, v1, v5

    if-ge v0, v2, :cond_7

    .line 474
    :cond_1
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mNudgesEnabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/HintView;->getVisibility()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 475
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2, v6}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 476
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mNudgeShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/HintView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    move v2, v5

    .line 490
    :goto_0
    return v2

    .line 480
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getRight()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchMarginRight:I

    iget v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchNudgeOffset:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_7

    .line 481
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mListener:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    invoke-interface {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;->onNudgeHint()V

    .line 482
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mDoMirror:Z

    if-nez v2, :cond_4

    sub-int v2, v1, v5

    if-lt v0, v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mDoMirror:Z

    if-eqz v2, :cond_7

    if-lez v0, :cond_7

    .line 483
    :cond_5
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mNudgesEnabled:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/HintView;->getVisibility()I

    move-result v2

    if-ne v2, v7, :cond_6

    .line 484
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2, v6}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 485
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mNudgeShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/HintView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    move v2, v5

    .line 487
    goto :goto_0

    :cond_7
    move v2, v6

    .line 490
    goto :goto_0
.end method

.method private toPixels(FF)I
    .locals 1
    .parameter "density"
    .parameter "DipsVal"

    .prologue
    .line 52
    mul-float v0, p2, p1

    float-to-int v0, v0

    return v0
.end method

.method private toPixelsRound(FF)I
    .locals 2
    .parameter "density"
    .parameter "DipsVal"

    .prologue
    .line 56
    mul-float v0, p2, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public SetOrientation(Z)V
    .locals 0
    .parameter "bIsLandscape"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mOrientationLandscape:Z

    .line 42
    return-void
.end method

.method public enableEditing(ZZ)V
    .locals 5
    .parameter "enable"
    .parameter "enableOnlyUninstall"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 236
    if-eqz p1, :cond_2

    .line 237
    if-eqz p2, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mEnabledChecker:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->setEnabledChecker(Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;)V

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAnimatorFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    if-nez p2, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->enableFloatRenderers(Z)V

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/paneview/PaneView;->setEnableStandardRenderers(Z)V

    .line 253
    :goto_2
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mEditingEnabled:Z

    .line 254
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->editorOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 243
    goto :goto_1

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->standardLongPressListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    invoke-interface {v0}, Lcom/sonyericsson/home/transfer/TransferHandler;->cancelTransfer()V

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->cancelLongPress()V

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setEnableStandardRenderers(Z)V

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAnimatorFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->stopAllStandardAnimators()V

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->setEnabledChecker(Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;)V

    goto :goto_2
.end method

.method public isEditingEnabled()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mEditingEnabled:Z

    return v0
.end method

.method public setCustomDPIsettings(Landroid/content/Context;)V
    .locals 26
    .parameter "ctx"

    .prologue
    .line 15
    const-string v23, "com.sonyericsson.home_preferences"

    #v23=(Reference,Ljava/lang/String;);
    const/16 v24, 0x0

    #v24=(Null);
    move-object/from16 v0, p1

    #v0=(Reference,Landroid/content/Context;);
    move-object/from16 v1, v23

    #v1=(Reference,Ljava/lang/String;);
    move/from16 v2, v24

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "desktopConfig"

    #v24=(Reference,Ljava/lang/String;);
    const-string v25, "4"

    #v25=(Reference,Ljava/lang/String;);
    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 17
    .local v10, desktopConfig:I
    #v10=(Integer);
    const-string v23, "com.sonyericsson.home_preferences"

    const/16 v24, 0x0

    #v24=(Null);
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "numDesktopCols"

    #v24=(Reference,Ljava/lang/String;);
    const-string v25, "4"

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 18
    .local v12, desktopNumCols:I
    #v12=(Integer);
    const-string v23, "com.sonyericsson.home_preferences"

    const/16 v24, 0x0

    #v24=(Null);
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "numDesktopRows"

    #v24=(Reference,Ljava/lang/String;);
    const-string v25, "4"

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 20
    .local v13, desktopNumRows:I
    #v13=(Integer);
    const-string v23, "com.sonyericsson.home_preferences"

    const/16 v24, 0x0

    #v24=(Null);
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "autohideDeskPaginatorPort"

    #v24=(Reference,Ljava/lang/String;);
    const/16 v25, 0x0

    #v25=(Null);
    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 21
    .local v4, bAutoHidePaginatorPort:Z
    #v4=(Boolean);
    const-string v23, "com.sonyericsson.home_preferences"

    const/16 v24, 0x0

    #v24=(Null);
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "autohideDeskPaginatorLand"

    #v24=(Reference,Ljava/lang/String;);
    const/16 v25, 0x1

    #v25=(One);
    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 22
    .local v3, bAutoHidePaginatorLand:Z
    #v3=(Boolean);
    const-string v23, "com.sonyericsson.home_preferences"

    const/16 v24, 0x0

    #v24=(Null);
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "textInStage"

    #v24=(Reference,Ljava/lang/String;);
    const/16 v25, 0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 24
    .local v5, bShowTitles:Z
    #v5=(Boolean);
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a001f

    #v24=(Integer);
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 25
    .local v15, desktop_right_nudge_padding_right:I
    #v15=(Integer);
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a0015

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 27
    .local v19, stage_breadth:I
    #v19=(Integer);
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a001d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 29
    .local v18, padLeft:I
    #v18=(Integer);
    const-string v23, "window"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    #v22=(Reference,Ljava/lang/Object;);
    check-cast v22, Landroid/view/WindowManager;

    .line 30
    .local v22, wm:Landroid/view/WindowManager;
    new-instance v17, Landroid/util/DisplayMetrics;

    #v17=(UninitRef,Landroid/util/DisplayMetrics;);
    invoke-direct/range {v17 .. v17}, Landroid/util/DisplayMetrics;-><init>()V

    .line 31
    .local v17, metrics:Landroid/util/DisplayMetrics;
    #v17=(Reference,Landroid/util/DisplayMetrics;);
    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 32
    move-object/from16 v0, v17

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 34
    .local v6, density:F
    #v6=(Integer);
    move-object/from16 v0, v17

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 35
    .local v11, desktopHeightPx:I
    #v11=(Integer);
    move-object/from16 v0, v17

    iget v14, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 37
    .local v14, desktopWidthPx:I
    #v14=(Integer);
    const/high16 v23, 0x41c8

    #v23=(Integer);
    move-object/from16 v0, p0

    move/from16 v1, v23

    #v1=(Integer);
    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->toPixelsRound(FF)I

    move-result v20

    .line 38
    .local v20, statusBarHeight:I
    #v20=(Integer);
    if-eqz v4, :cond_0

    const/4 v8, 0x0

    .line 39
    .local v8, deskPaginatorHeightPort:I
    :goto_0
    #v8=(Integer);
    if-eqz v3, :cond_1

    const/4 v7, 0x0

    .line 40
    .local v7, deskPaginatorHeightLand:I
    :goto_1
    #v7=(Integer);
    if-eqz v5, :cond_2

    const/high16 v23, 0x41a0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->toPixelsRound(FF)I

    move-result v9

    .line 44
    .local v9, deskStageCompesation:I
    :goto_2
    #v9=(Integer);
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mOrientationLandscape:Z

    #v0=(Boolean);
    move/from16 v23, v0

    #v23=(Boolean);
    if-nez v23, :cond_4

    .line 46
    const/16 v23, 0x4

    #v23=(PosByte);
    move/from16 v0, v23

    #v0=(PosByte);
    if-eq v10, v0, :cond_3

    .line 48
    sub-int v23, v11, v19

    #v23=(Integer);
    add-int v23, v23, v9

    sub-int v23, v23, v8

    sub-int v16, v23, v20

    .line 54
    .local v16, height:I
    :goto_3
    #v16=(Integer);
    move/from16 v21, v14

    .line 56
    .local v21, width:I
    #v21=(Integer);
    div-int v23, v16, v13

    move/from16 v0, v23

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference,Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;);
    iput v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mCellHeight:I

    .line 57
    div-int v23, v21, v12

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mCellWidth:I

    .line 74
    :goto_4
    return-void

    .line 38
    .end local v7           #deskPaginatorHeightLand:I
    .end local v8           #deskPaginatorHeightPort:I
    .end local v9           #deskStageCompesation:I
    .end local v16           #height:I
    .end local v21           #width:I
    :cond_0
    #v0=(Reference,Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;);v1=(Integer);v7=(Uninit);v8=(Uninit);v9=(Uninit);v16=(Uninit);v21=(Uninit);
    const/high16 v23, 0x41f0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->toPixelsRound(FF)I

    move-result v8

    #v8=(Integer);
    goto :goto_0

    .line 39
    .restart local v8       #deskPaginatorHeightPort:I
    :cond_1
    const/high16 v23, 0x41f0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->toPixelsRound(FF)I

    move-result v7

    #v7=(Integer);
    goto :goto_1

    .line 40
    .restart local v7       #deskPaginatorHeightLand:I
    :cond_2
    const/high16 v23, 0x4220

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->toPixelsRound(FF)I

    move-result v9

    #v9=(Integer);
    goto :goto_2

    .line 52
    .restart local v9       #deskStageCompesation:I
    :cond_3
    #v0=(PosByte);v23=(PosByte);
    sub-int v23, v11, v8

    #v23=(Integer);
    sub-int v16, v23, v20

    .restart local v16       #height:I
    #v16=(Integer);
    goto :goto_3

    .line 61
    .end local v16           #height:I
    :cond_4
    #v0=(Boolean);v16=(Uninit);v23=(Boolean);
    sub-int v23, v11, v7

    #v23=(Integer);
    sub-int v16, v23, v20

    .line 62
    .restart local v16       #height:I
    #v16=(Integer);
    const/16 v23, 0x4

    #v23=(PosByte);
    move/from16 v0, v23

    #v0=(PosByte);
    if-eq v10, v0, :cond_5

    .line 64
    sub-int v23, v14, v18

    #v23=(Integer);
    sub-int v21, v23, v15

    .line 71
    .restart local v21       #width:I
    :goto_5
    #v21=(Integer);
    div-int v23, v16, v13

    move/from16 v0, v23

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference,Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;);
    iput v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mCellHeight:I

    .line 72
    div-int v23, v21, v12

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mCellWidth:I

    goto :goto_4

    .line 68
    .end local v21           #width:I
    :cond_5
    #v0=(PosByte);v1=(Integer);v21=(Uninit);v23=(PosByte);
    move/from16 v21, v14

    .restart local v21       #width:I
    #v21=(Integer);
    goto :goto_5
.end method

.method public setDoMirror(Z)V
    .locals 0
    .parameter "doMirror"

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mDoMirror:Z

    .line 262
    return-void
.end method

.method public setEditorListener(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mListener:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    .line 229
    return-void
.end method

.method public setOriginRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mOriginRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 233
    return-void
.end method
