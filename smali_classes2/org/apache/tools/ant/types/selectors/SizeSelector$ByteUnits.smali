.class public Lorg/apache/tools/ant/types/selectors/SizeSelector$ByteUnits;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "SizeSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/selectors/SizeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteUnits"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 36

    const-string v0, "K"

    const-string v1, "k"

    const-string v2, "kilo"

    const-string v3, "KILO"

    const-string v4, "Ki"

    const-string v5, "KI"

    const-string v6, "ki"

    const-string v7, "kibi"

    const-string v8, "KIBI"

    const-string v9, "M"

    const-string v10, "m"

    const-string v11, "mega"

    const-string v12, "MEGA"

    const-string v13, "Mi"

    const-string v14, "MI"

    const-string v15, "mi"

    const-string v16, "mebi"

    const-string v17, "MEBI"

    const-string v18, "G"

    const-string v19, "g"

    const-string v20, "giga"

    const-string v21, "GIGA"

    const-string v22, "Gi"

    const-string v23, "GI"

    const-string v24, "gi"

    const-string v25, "gibi"

    const-string v26, "GIBI"

    const-string v27, "T"

    const-string v28, "t"

    const-string v29, "tera"

    const-string v30, "TERA"

    const-string v31, "Ti"

    const-string v32, "TI"

    const-string v33, "ti"

    const-string v34, "tebi"

    const-string v35, "TEBI"

    .line 252
    filled-new-array/range {v0 .. v35}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
