.class public Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "ModifiedSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgorithmName"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 920
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 4

    const-string v0, "checksum"

    const-string v1, "lastmodified"

    const-string v2, "hashvalue"

    const-string v3, "digest"

    .line 927
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
