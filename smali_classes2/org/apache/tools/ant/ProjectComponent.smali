.class public abstract Lorg/apache/tools/ant/ProjectComponent;
.super Ljava/lang/Object;
.source "ProjectComponent.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected description:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected location:Lorg/apache/tools/ant/Location;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected project:Lorg/apache/tools/ant/Project;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v0, p0, Lorg/apache/tools/ant/ProjectComponent;->location:Lorg/apache/tools/ant/Location;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 168
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ProjectComponent;

    .line 169
    invoke-virtual {p0}, Lorg/apache/tools/ant/ProjectComponent;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/ProjectComponent;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 170
    invoke-virtual {p0}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/ProjectComponent;->setProject(Lorg/apache/tools/ant/Project;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/ProjectComponent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lorg/apache/tools/ant/Location;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/tools/ant/ProjectComponent;->location:Lorg/apache/tools/ant/Location;

    return-object v0
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/ProjectComponent;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 137
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public log(Ljava/lang/String;I)V
    .locals 1

    .line 148
    invoke-virtual {p0}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-gt p2, v0, :cond_1

    .line 155
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lorg/apache/tools/ant/ProjectComponent;->description:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Lorg/apache/tools/ant/Location;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lorg/apache/tools/ant/ProjectComponent;->location:Lorg/apache/tools/ant/Location;

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/apache/tools/ant/ProjectComponent;->project:Lorg/apache/tools/ant/Project;

    return-void
.end method
