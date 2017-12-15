.class Lcom/android/camera/storage/ImageSaver$MemoryManager;
.super Ljava/lang/Object;
.source "ImageSaver.java"

# interfaces
.implements Lcom/android/camera/storage/Storage$StorageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryManager"
.end annotation


# instance fields
.field private mMaxMemory:J

.field private mMaxTotalMemory:I

.field private mRuntime:Ljava/lang/Runtime;

.field private mSaveTaskMemoryLimit:I

.field private mSavedQueueMemoryLimit:I

.field private mSaverMemoryUse:I

.field final synthetic this$0:Lcom/android/camera/storage/ImageSaver;


# direct methods
.method static synthetic -wrap0(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isNeedSlowDown()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isNeedStopCapture()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isSaveQueueFull()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/camera/storage/ImageSaver$MemoryManager;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->getBurstDelay()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->addUsedMemory(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/camera/storage/ImageSaver$MemoryManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->initMemory()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->reduceUsedMemory(I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/storage/ImageSaver;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/storage/ImageSaver$MemoryManager;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    return-void
.end method

.method private addUsedMemory(I)V
    .registers 3

    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    return-void
.end method

.method private getBaseMemory()J
    .registers 5

    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    sparse-switch v0, :sswitch_data_20

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :sswitch_13
    const-wide/32 v0, 0x1400000

    return-wide v0

    :sswitch_17
    const-wide/32 v0, 0x2800000

    return-wide v0

    :sswitch_1b
    const-wide/32 v0, 0x3c00000

    return-wide v0

    nop

    :sswitch_data_20
    .sparse-switch
        0x2d0 -> :sswitch_13
        0x438 -> :sswitch_17
        0x5a0 -> :sswitch_1b
    .end sparse-switch
.end method

.method private getBurstDelay()I
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isNeedSlowDown()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_2d

    const/16 v0, 0x8

    :cond_13
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBurstDelay: delayMultiple="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    mul-int/lit8 v1, v0, 0x64

    return v1

    :cond_2d
    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    if-lt v1, v2, :cond_39

    const/4 v0, 0x5

    goto :goto_13

    :cond_39
    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    if-lt v1, v2, :cond_45

    const/4 v0, 0x4

    goto :goto_13

    :cond_45
    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-lt v1, v2, :cond_51

    const/4 v0, 0x3

    goto :goto_13

    :cond_51
    const/4 v0, 0x1

    goto :goto_13
.end method

.method private getTotalUsedMemory()I
    .registers 11

    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    sub-long v4, v2, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getLeftMemory: maxMemory="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", free="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", totalUsed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    long-to-int v6, v4

    return v6
.end method

.method private initLimit()V
    .registers 8

    const/high16 v6, 0x3c00000

    iget-wide v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->getBaseMemory()J

    move-result-wide v4

    sub-long v0, v2, v4

    invoke-static {}, Lcom/android/camera/storage/Storage;->isUsePhoneStorage()Z

    move-result v2

    if-eqz v2, :cond_23

    long-to-float v2, v0

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    :cond_18
    :goto_18
    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    int-to-float v2, v2

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSavedQueueMemoryLimit:I

    return-void

    :cond_23
    long-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    if-ge v6, v2, :cond_18

    iput v6, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    goto :goto_18
.end method

.method private initMemory()V
    .registers 5

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    iget-wide v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    long-to-float v0, v0

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxTotalMemory:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->initLimit()V

    invoke-static {p0}, Lcom/android/camera/storage/Storage;->setStorageListener(Lcom/android/camera/storage/Storage$StorageListener;)V

    const-string/jumbo v0, "CameraMemoryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initMemory: maxMemory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isNeedSlowDown()Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v1

    if-eqz v1, :cond_46

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-lt v1, v2, :cond_44

    const/4 v0, 0x1

    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isNeedSlowDown: return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mSaverMemoryUse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mSaveTaskMemoryLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    return v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_12

    :cond_46
    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_50

    const/4 v0, 0x1

    goto :goto_12

    :cond_50
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private isNeedStopCapture()Z
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isReachedMemoryLimit()Z

    move-result v1

    if-nez v1, :cond_f

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxTotalMemory:I

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->getTotalUsedMemory()I

    move-result v2

    if-gt v1, v2, :cond_2b

    :cond_f
    :goto_f
    const/4 v0, 0x1

    const-string/jumbo v1, "CameraMemoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNeedStopCapture: needStop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return v0

    :cond_2b
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v2

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2a

    goto :goto_f
.end method

.method private isReachedMemoryLimit()Z
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isReachedMemoryLimit: usedMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    if-lt v0, v1, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private isSaveQueueFull()Z
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSaveQueueFull: usedMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSavedQueueMemoryLimit:I

    if-lt v0, v1, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private log(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "CameraMemoryManager"

    invoke-static {v0, p1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method private reduceUsedMemory(I)V
    .registers 3

    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    return-void
.end method


# virtual methods
.method public onStoragePathChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->initMemory()V

    return-void
.end method