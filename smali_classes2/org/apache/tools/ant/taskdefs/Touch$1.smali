.class Lorg/apache/tools/ant/taskdefs/Touch$1;
.super Ljava/lang/Object;
.source "Touch.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Touch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFallbackFormat()Ljava/text/DateFormat;
    .locals 1

    .line 76
    sget-object v0, Lorg/apache/tools/ant/util/DateUtils;->EN_US_DATE_FORMAT_SEC:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    return-object v0
.end method

.method public getPrimaryFormat()Ljava/text/DateFormat;
    .locals 1

    .line 72
    sget-object v0, Lorg/apache/tools/ant/util/DateUtils;->EN_US_DATE_FORMAT_MIN:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    return-object v0
.end method
