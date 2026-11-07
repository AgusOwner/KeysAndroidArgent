.class public Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Type;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "PropertyFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final DATE_TYPE:I = 0x1

.field public static final INTEGER_TYPE:I = 0x0

.field public static final STRING_TYPE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 629
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method public static toType(Ljava/lang/String;)I
    .locals 1

    const-string v0, "int"

    .line 651
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "date"

    .line 654
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 3

    const-string v0, "date"

    const-string v1, "string"

    const-string v2, "int"

    .line 642
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
