.class public Lorg/apache/tools/ant/taskdefs/ExecuteOn$FileDirBoth;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "ExecuteOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/ExecuteOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDirBoth"
.end annotation


# static fields
.field public static final DIR:Ljava/lang/String; = "dir"

.field public static final FILE:Ljava/lang/String; = "file"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 757
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 3

    const-string v0, "dir"

    const-string v1, "both"

    const-string v2, "file"

    .line 769
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
