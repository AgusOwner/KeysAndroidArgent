.class public Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Operation;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "PropertyFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operation"
.end annotation


# static fields
.field public static final DECREMENT_OPER:I = 0x1

.field public static final DELETE_OPER:I = 0x3

.field public static final EQUALS_OPER:I = 0x2

.field public static final INCREMENT_OPER:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 589
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method public static toOperation(Ljava/lang/String;)I
    .locals 1

    const-string v0, "+"

    .line 613
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "-"

    .line 616
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "del"

    .line 619
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 4

    const-string v0, "="

    const-string v1, "del"

    const-string v2, "+"

    const-string v3, "-"

    .line 604
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
