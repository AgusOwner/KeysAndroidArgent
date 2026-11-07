.class public Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "ModifiedSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheName"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 889
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 1

    const-string v0, "propertyfile"

    .line 896
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
