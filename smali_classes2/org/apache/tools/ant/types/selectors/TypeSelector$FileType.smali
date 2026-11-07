.class public Lorg/apache/tools/ant/types/selectors/TypeSelector$FileType;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "TypeSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/selectors/TypeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileType"
.end annotation


# static fields
.field public static final DIR:Ljava/lang/String; = "dir"

.field public static final FILE:Ljava/lang/String; = "file"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 2

    const-string v0, "file"

    const-string v1, "dir"

    .line 123
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
