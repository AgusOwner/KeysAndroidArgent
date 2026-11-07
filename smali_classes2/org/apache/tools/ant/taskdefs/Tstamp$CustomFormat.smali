.class public Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;
.super Ljava/lang/Object;
.source "Tstamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Tstamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomFormat"
.end annotation


# instance fields
.field private country:Ljava/lang/String;

.field private field:I

.field private language:Ljava/lang/String;

.field private offset:I

.field private pattern:Ljava/lang/String;

.field private propertyName:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Tstamp;

.field private timeZone:Ljava/util/TimeZone;

.field private variant:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/Tstamp;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->this$0:Lorg/apache/tools/ant/taskdefs/Tstamp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 188
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->offset:I

    const/4 p1, 0x5

    .line 189
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->field:I

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/tools/ant/Project;Ljava/util/Date;Lorg/apache/tools/ant/Location;)V
    .locals 4

    .line 301
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->propertyName:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 305
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->pattern:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 310
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->language:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 311
    new-instance p1, Ljava/text/SimpleDateFormat;

    iget-object p3, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->pattern:Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->variant:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 313
    new-instance p1, Ljava/text/SimpleDateFormat;

    iget-object p3, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->pattern:Ljava/lang/String;

    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->language:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->country:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    .line 315
    :cond_1
    new-instance p1, Ljava/text/SimpleDateFormat;

    iget-object p3, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->pattern:Ljava/lang/String;

    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->language:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->country:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->variant:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 317
    :goto_0
    iget p3, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->offset:I

    if-eqz p3, :cond_2

    .line 318
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 319
    invoke-virtual {p3, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 320
    iget p2, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->field:I

    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->offset:I

    invoke-virtual {p3, p2, v0}, Ljava/util/Calendar;->add(II)V

    .line 321
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    .line 323
    :cond_2
    iget-object p3, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->timeZone:Ljava/util/TimeZone;

    if-eqz p3, :cond_3

    .line 324
    invoke-virtual {p1, p3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 326
    :cond_3
    iget-object p3, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->this$0:Lorg/apache/tools/ant/taskdefs/Tstamp;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v0, p1}, Lorg/apache/tools/ant/taskdefs/Tstamp;->access$000(Lorg/apache/tools/ant/taskdefs/Tstamp;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 306
    :cond_4
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "pattern attribute must be provided"

    invoke-direct {p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    .line 302
    :cond_5
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "property attribute must be provided"

    invoke-direct {p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 3

    const-string v0, "bad locale format"

    .line 219
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " \t\n\r\u000c,"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :try_start_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->language:Ljava/lang/String;

    .line 222
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 223
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->country:Ljava/lang/String;

    .line 224
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 225
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->variant:Ljava/lang/String;

    .line 226
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->this$0:Lorg/apache/tools/ant/taskdefs/Tstamp;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    :cond_1
    const-string p1, ""

    .line 231
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->country:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 234
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->this$0:Lorg/apache/tools/ant/taskdefs/Tstamp;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public setOffset(I)V
    .locals 0

    .line 253
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->offset:I

    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->pattern:Ljava/lang/String;

    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->propertyName:Ljava/lang/String;

    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0

    .line 245
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->this$0:Lorg/apache/tools/ant/taskdefs/Tstamp;

    const-string v1, "DEPRECATED - The setUnit(String) method has been deprecated. Use setUnit(Tstamp.Unit) instead."

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tstamp;->log(Ljava/lang/String;)V

    .line 269
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tstamp$Unit;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Tstamp$Unit;-><init>()V

    .line 270
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Tstamp$Unit;->setValue(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Tstamp$Unit;->getCalendarField()I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->field:I

    return-void
.end method

.method public setUnit(Lorg/apache/tools/ant/taskdefs/Tstamp$Unit;)V
    .locals 0

    .line 291
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Tstamp$Unit;->getCalendarField()I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->field:I

    return-void
.end method
