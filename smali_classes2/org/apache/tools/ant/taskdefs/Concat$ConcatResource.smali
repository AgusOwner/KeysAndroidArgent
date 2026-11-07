.class final Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;
.super Lorg/apache/tools/ant/types/Resource;
.source "Concat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Concat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConcatResource"
.end annotation


# instance fields
.field private c:Lorg/apache/tools/ant/types/ResourceCollection;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Concat;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/taskdefs/Concat;Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 454
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->c:Lorg/apache/tools/ant/types/ResourceCollection;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Concat;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/taskdefs/Concat$1;)V
    .locals 0

    .line 450
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 10

    .line 458
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$500(Lorg/apache/tools/ant/taskdefs/Concat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->c:Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;-><init>(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 460
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    return-object v0

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$600(Lorg/apache/tools/ant/taskdefs/Concat;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->c:Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    .line 466
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Concat;->access$700(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/util/Iterator;Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;ZLorg/apache/tools/ant/taskdefs/Concat$1;)V

    goto :goto_0

    .line 468
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    new-instance v7, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->c:Lorg/apache/tools/ant/types/ResourceCollection;

    .line 469
    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Concat;->access$700(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/util/Iterator;Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;ZLorg/apache/tools/ant/taskdefs/Concat$1;)V

    .line 468
    invoke-static {v0, v7}, Lorg/apache/tools/ant/taskdefs/Concat;->access$200(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    .line 472
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Concat;->access$900(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1000(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v1

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 476
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Concat;->access$900(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    move v1, v2

    .line 479
    :goto_1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1000(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 482
    :cond_4
    new-array v1, v1, [Ljava/io/Reader;

    .line 484
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/Concat;->access$900(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 485
    new-instance v3, Ljava/io/StringReader;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v5}, Lorg/apache/tools/ant/taskdefs/Concat;->access$900(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v4

    .line 486
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/Concat;->access$900(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->access$1100(Lorg/apache/tools/ant/taskdefs/Concat$TextElement;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 487
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    aget-object v5, v1, v4

    invoke-static {v3, v5}, Lorg/apache/tools/ant/taskdefs/Concat;->access$200(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v3

    aput-object v3, v1, v4

    goto :goto_2

    :cond_5
    move v2, v4

    :cond_6
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .line 491
    aput-object v0, v1, v2

    .line 492
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1000(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 493
    new-instance v0, Ljava/io/StringReader;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1000(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    aput-object v0, v1, v3

    .line 494
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1000(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->access$1100(Lorg/apache/tools/ant/taskdefs/Concat$TextElement;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 495
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    aget-object v2, v1, v3

    invoke-static {v0, v2}, Lorg/apache/tools/ant/taskdefs/Concat;->access$200(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    aput-object v0, v1, v3

    .line 498
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    .line 499
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1200(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/util/Iterator;Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;ZLorg/apache/tools/ant/taskdefs/Concat$1;)V

    .line 501
    :goto_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1300(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    new-instance v1, Lorg/apache/tools/ant/util/ReaderInputStream;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/util/ReaderInputStream;-><init>(Ljava/io/Reader;)V

    goto :goto_4

    .line 502
    :cond_8
    new-instance v1, Lorg/apache/tools/ant/util/ReaderInputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1300(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/util/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    :goto_4
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 506
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1400(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "concat ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->c:Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1400(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
