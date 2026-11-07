.class public Lorg/apache/tools/ant/util/MergingMapper;
.super Ljava/lang/Object;
.source "MergingMapper.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# instance fields
.field protected mergedFile:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/apache/tools/ant/util/MergingMapper;->mergedFile:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/apache/tools/ant/util/MergingMapper;->mergedFile:[Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/MergingMapper;->setTo(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p1, p0, Lorg/apache/tools/ant/util/MergingMapper;->mergedFile:[Ljava/lang/String;

    return-object p1
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0

    .line 59
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/util/MergingMapper;->mergedFile:[Ljava/lang/String;

    return-void
.end method
