.class public Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "IsLastModified.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;
    }
.end annotation


# instance fields
.field private dateTime:Ljava/lang/String;

.field private dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

.field private millis:J

.field private mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

.field private resource:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const-wide/16 v0, -0x1

    .line 40
    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->millis:J

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dateTime:Ljava/lang/String;

    .line 42
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Touch;->DEFAULT_DF_FACTORY:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    .line 44
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->access$000()Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/Resource;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->resource:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_0

    .line 91
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->resource:Lorg/apache/tools/ant/types/Resource;

    return-void

    .line 89
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "only one resource can be tested"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public eval()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->validate()V

    .line 160
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->getMillis()J

    move-result-wide v0

    .line 161
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->resource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v2

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "expected timestamp: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "), actual timestamp: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->log(Ljava/lang/String;I)V

    .line 165
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "equals"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    return v5

    .line 168
    :cond_1
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v7, "before"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    return v5

    .line 171
    :cond_3
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v7, "not-before"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    return v5

    .line 174
    :cond_5
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v7, "after"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    goto :goto_3

    :cond_6
    move v5, v6

    :goto_3
    return v5

    .line 177
    :cond_7
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v7, "not-after"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    goto :goto_4

    :cond_8
    move v5, v6

    :goto_4
    return v5

    .line 180
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getMillis()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 127
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->millis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    const-string v0, "now"

    .line 130
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 133
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;->getPrimaryFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 138
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;->getFallbackFormat()Ljava/text/DateFormat;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 143
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dateTime:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v0

    :catch_1
    move-exception v0

    .line 149
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public setDatetime(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dateTime:Ljava/lang/String;

    return-void
.end method

.method public setMillis(J)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->millis:J

    return-void
.end method

.method public setMode(Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1

    .line 71
    new-instance v0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$1;-><init>(Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    return-void
.end method

.method protected validate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 108
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->millis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dateTime:Ljava/lang/String;

    if-nez v4, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one of dateTime and millis can be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 112
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dateTime:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 113
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "millis or dateTime is required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->resource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_4

    return-void

    .line 116
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "resource is required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
