.class Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;
.super Ljava/lang/Object;
.source "ChangeLogParser.java"


# static fields
.field private static final GET_COMMENT:I = 0x3

.field private static final GET_DATE:I = 0x2

.field private static final GET_FILE:I = 0x1

.field private static final GET_PREVIOUS_REV:I = 0x5

.field private static final GET_REVISION:I = 0x4


# instance fields
.field private author:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private final cvs1129InputDate:Ljava/text/SimpleDateFormat;

.field private date:Ljava/lang/String;

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;",
            ">;"
        }
    .end annotation
.end field

.field private file:Ljava/lang/String;

.field private final inputDate:Ljava/text/SimpleDateFormat;

.field private final moduleNameLengths:[I

.field private final moduleNames:[Ljava/lang/String;

.field private previousRevision:Ljava/lang/String;

.field private final remote:Z

.field private revision:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, ""

    .line 73
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->inputDate:Ljava/text/SimpleDateFormat;

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->cvs1129InputDate:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    .line 66
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->entries:Ljava/util/Map;

    .line 77
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->remote:Z

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 81
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 82
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda2;

    invoke-direct {p3, p1}, Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/String;

    .line 88
    invoke-interface {p1, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->moduleNames:[Ljava/lang/String;

    .line 89
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->moduleNameLengths:[I

    .line 90
    :goto_1
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->moduleNames:[Ljava/lang/String;

    array-length p3, p1

    if-ge p2, p3, :cond_1

    .line 91
    iget-object p3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->moduleNameLengths:[I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    aput p1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const-string p1, "UTC"

    .line 94
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->inputDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 96
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->cvs1129InputDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 275
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->inputDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 278
    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->cvs1129InputDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 280
    :catch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid date format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processComment(Ljava/lang/String;)V
    .locals 2

    const-string v0, "============================================================================="

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 153
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p1, v0

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->saveEntry()V

    const/4 p1, 0x1

    .line 156
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    goto :goto_0

    :cond_0
    const-string v0, "----------------------------"

    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p1, v0

    .line 159
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    const/4 p1, 0x5

    .line 160
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    goto :goto_0

    .line 162
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private processDate(Ljava/lang/String;)V
    .locals 3

    const-string v0, "date:"

    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3b

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x6

    .line 227
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->date:Ljava/lang/String;

    const-string v2, "author: "

    add-int/lit8 v1, v1, 0x1

    .line 229
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 230
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/16 v2, 0x8

    add-int/2addr v2, v1

    .line 231
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->author:Ljava/lang/String;

    const/4 p1, 0x3

    .line 233
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    const-string p1, ""

    .line 237
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private processFile(Ljava/lang/String;)V
    .locals 5

    .line 172
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->remote:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    const-string v0, "Working file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->file:Ljava/lang/String;

    .line 176
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    goto :goto_3

    .line 177
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->remote:Z

    if-eqz v0, :cond_4

    const-string v0, "RCS file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v2, v0

    .line 181
    :goto_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->moduleNames:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 182
    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 184
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->moduleNameLengths:[I

    aget v0, v0, v2

    add-int/2addr v3, v0

    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string v2, ",v"

    .line 188
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->file:Ljava/lang/String;

    goto :goto_2

    .line 192
    :cond_3
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->file:Ljava/lang/String;

    .line 194
    :goto_2
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    :cond_4
    :goto_3
    return-void
.end method

.method private processGetPreviousRevision(Ljava/lang/String;)V
    .locals 3

    const-string v0, "revision "

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    .line 251
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->previousRevision:Ljava/lang/String;

    .line 253
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->saveEntry()V

    .line 255
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->previousRevision:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->revision:Ljava/lang/String;

    const/4 p1, 0x2

    .line 256
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    return-void

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected line from CVS: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processRevision(Ljava/lang/String;)V
    .locals 1

    const-string v0, "revision"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->revision:Ljava/lang/String;

    const/4 p1, 0x2

    .line 208
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    goto :goto_0

    :cond_0
    const-string v0, "======"

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 212
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    :cond_1
    :goto_0
    return-void
.end method

.method private saveEntry()V
    .locals 4

    .line 263
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->entries:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->author:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->file:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->revision:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->previousRevision:Ljava/lang/String;

    .line 264
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->addFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEntrySetAsArray()[Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;

    return-object v0
.end method

.method synthetic lambda$saveEntry$0$org-apache-tools-ant-taskdefs-cvslib-ChangeLogParser(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;
    .locals 3

    .line 264
    new-instance p1, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->date:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->author:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->file:Ljava/lang/String;

    .line 290
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->date:Ljava/lang/String;

    .line 291
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->author:Ljava/lang/String;

    .line 292
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    .line 293
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->revision:Ljava/lang/String;

    .line 294
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->previousRevision:Ljava/lang/String;

    return-void
.end method

.method public stdout(Ljava/lang/String;)V
    .locals 2

    .line 114
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->processGetPreviousRevision(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->processRevision(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->processComment(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->processDate(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->reset()V

    .line 119
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->processFile(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
