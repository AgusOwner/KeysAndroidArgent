.class public Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Jar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Jar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrictMode"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1188
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1195
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 1196
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLogLevel()I
    .locals 2

    const-string v0, "ignore"

    .line 1212
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getValues()[Ljava/lang/String;
    .locals 3

    const-string v0, "warn"

    const-string v1, "ignore"

    const-string v2, "fail"

    .line 1205
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
