.class Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;
.super Ljava/lang/Object;
.source "DefaultRmicAdapter.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RmicFileNameMapper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$1;)V
    .locals 0

    .line 386
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;-><init>(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)V

    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13

    const-string v0, "Unable to verify class "

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    const-string v2, ".class"

    .line 404
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 405
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getStubClassSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 406
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getSkelClassSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 407
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getTieClassSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 413
    :cond_0
    invoke-static {p1, v2}, Lorg/apache/tools/ant/util/StringUtils;->removeSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 415
    sget-char v4, Ljava/io/File;->separatorChar:C

    const/16 v5, 0x2e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 416
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v6}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/tools/ant/taskdefs/Rmic;->getVerify()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 417
    invoke-static {v6}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/apache/tools/ant/taskdefs/Rmic;->isValidRmiRemote(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    return-object v1

    .line 429
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".tmp."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$200()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 431
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIiop()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIdl()Z

    move-result v1

    if-nez v1, :cond_3

    .line 433
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Rmic;->getStubVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1.2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 434
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 435
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getStubClassSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 438
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 439
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getStubClassSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 440
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getSkelClassSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 443
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIdl()Z

    move-result v1

    if-nez v1, :cond_7

    .line 444
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const-string v6, ""

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v1, v7, :cond_4

    move-object v10, v6

    move v1, v8

    goto :goto_0

    :cond_4
    add-int/2addr v1, v9

    .line 457
    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 460
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 463
    :try_start_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 465
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "_"

    if-eqz v11, :cond_5

    :try_start_1
    new-array v3, v9, [Ljava/lang/String;

    .line 467
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 468
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getStubClassSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    move-object p1, v3

    goto/16 :goto_2

    .line 476
    :cond_5
    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v11}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v11

    invoke-virtual {v11, v3}, Lorg/apache/tools/ant/taskdefs/Rmic;->getRemoteInterface(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 477
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 480
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    if-ne v11, v7, :cond_6

    move v11, v8

    goto :goto_1

    :cond_6
    add-int/2addr v11, v9

    .line 487
    invoke-virtual {v3, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 488
    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 491
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 492
    invoke-virtual {v7}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getTieClassSuffix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 494
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 495
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getStubClassSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v9
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v5

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 506
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Loading caused Exception: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 508
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-virtual {v2, v0, v9}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    goto :goto_2

    .line 503
    :catch_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". It is not defined."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    goto :goto_2

    .line 499
    :catch_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". It could not be found."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    :cond_7
    :goto_2
    return-object p1

    :cond_8
    :goto_3
    return-object v1
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
