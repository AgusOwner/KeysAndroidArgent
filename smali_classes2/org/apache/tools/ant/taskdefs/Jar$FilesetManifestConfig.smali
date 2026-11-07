.class public Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Jar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Jar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilesetManifestConfig"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1001
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 3

    const-string v0, "merge"

    const-string v1, "mergewithoutmain"

    const-string v2, "skip"

    .line 1008
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
