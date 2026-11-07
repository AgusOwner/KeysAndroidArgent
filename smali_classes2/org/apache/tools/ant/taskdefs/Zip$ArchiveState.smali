.class public Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;
.super Ljava/lang/Object;
.source "Zip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Zip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArchiveState"
.end annotation


# instance fields
.field private final outOfDate:Z

.field private final resourcesToAdd:[[Lorg/apache/tools/ant/types/Resource;


# direct methods
.method constructor <init>(Z[[Lorg/apache/tools/ant/types/Resource;)V
    .locals 0

    .line 2097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2098
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->outOfDate:Z

    .line 2099
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->resourcesToAdd:[[Lorg/apache/tools/ant/types/Resource;

    return-void
.end method


# virtual methods
.method public getResourcesToAdd()[[Lorg/apache/tools/ant/types/Resource;
    .locals 1

    .line 2115
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->resourcesToAdd:[[Lorg/apache/tools/ant/types/Resource;

    return-object v0
.end method

.method public isOutOfDate()Z
    .locals 1

    .line 2107
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->outOfDate:Z

    return v0
.end method

.method public isWithoutAnyResources()Z
    .locals 6

    .line 2123
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->resourcesToAdd:[[Lorg/apache/tools/ant/types/Resource;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2126
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    if-eqz v5, :cond_1

    .line 2127
    array-length v5, v5

    if-lez v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
