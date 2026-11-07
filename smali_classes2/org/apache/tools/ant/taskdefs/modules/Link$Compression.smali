.class public Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/modules/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Compression"
.end annotation


# instance fields
.field private level:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

.field private final patterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V
    .locals 0

    .line 1383
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1391
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->patterns:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createFiles()Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;
    .locals 2

    .line 1418
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 1419
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->patterns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getLevel()Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;
    .locals 1

    .line 1399
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->level:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

    return-object v0
.end method

.method public setFiles(Ljava/lang/String;)V
    .locals 6

    .line 1433
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, ","

    .line 1434
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1435
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->patterns:Ljava/util/List;

    new-instance v4, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {v4, v5, v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLevel(Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;)V
    .locals 0

    .line 1408
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->level:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

    return-void
.end method

.method public toCommandLineOption()Ljava/lang/String;
    .locals 4

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->level:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

    .line 1460
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;->toCommandLineOption()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1462
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->patterns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1464
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->patterns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ":filter="

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    .line 1465
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->toOptionValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    goto :goto_0

    .line 1470
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 3

    .line 1446
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->level:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->patterns:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1447
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    .line 1448
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    const-string v2, "Compression level must be specified."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method
