.class public Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;
.super Lorg/apache/tools/ant/NoBannerLogger;
.source "SimpleBigProjectLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/NoBannerLogger;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractTargetName(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lorg/apache/tools/ant/NoBannerLogger;->extractTargetName(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/listener/SimpleBigProjectLogger;->extractProjectName(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method
