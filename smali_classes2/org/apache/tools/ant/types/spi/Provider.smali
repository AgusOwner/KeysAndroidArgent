.class public Lorg/apache/tools/ant/types/spi/Provider;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "Provider.java"


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public check()V
    .locals 3

    .line 53
    iget-object v0, p0, Lorg/apache/tools/ant/types/spi/Provider;->type:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Invalid empty classname"

    .line 60
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/spi/Provider;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 54
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "classname attribute must be set for provider element"

    .line 56
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/spi/Provider;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/apache/tools/ant/types/spi/Provider;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/apache/tools/ant/types/spi/Provider;->type:Ljava/lang/String;

    return-void
.end method
