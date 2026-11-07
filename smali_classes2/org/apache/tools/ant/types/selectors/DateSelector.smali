.class public Lorg/apache/tools/ant/types/selectors/DateSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;
.source "DateSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/selectors/DateSelector$TimeComparisons;
    }
.end annotation


# static fields
.field public static final CHECKDIRS_KEY:Ljava/lang/String; = "checkdirs"

.field public static final DATETIME_KEY:Ljava/lang/String; = "datetime"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final GRANULARITY_KEY:Ljava/lang/String; = "granularity"

.field public static final MILLIS_KEY:Ljava/lang/String; = "millis"

.field public static final PATTERN_KEY:Ljava/lang/String; = "pattern"

.field public static final WHEN_KEY:Ljava/lang/String; = "when"


# instance fields
.field private dateTime:Ljava/lang/String;

.field private granularity:J

.field private includeDirs:Z

.field private millis:J

.field private pattern:Ljava/lang/String;

.field private when:Lorg/apache/tools/ant/types/TimeComparison;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/selectors/DateSelector;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;-><init>()V

    const-wide/16 v0, -0x1

    .line 55
    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->millis:J

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->dateTime:Ljava/lang/String;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->includeDirs:Z

    .line 58
    sget-object v0, Lorg/apache/tools/ant/types/selectors/DateSelector;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->granularity:J

    .line 60
    sget-object v0, Lorg/apache/tools/ant/types/TimeComparison;->EQUAL:Lorg/apache/tools/ant/types/TimeComparison;

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->when:Lorg/apache/tools/ant/types/TimeComparison;

    return-void
.end method


# virtual methods
.method public getMillis()J
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->dateTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/DateSelector;->validate()V

    .line 95
    :cond_0
    iget-wide v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->millis:J

    return-wide v0
.end method

.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 7

    .line 233
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/DateSelector;->validate()V

    .line 234
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->includeDirs:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->when:Lorg/apache/tools/ant/types/TimeComparison;

    .line 235
    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->millis:J

    iget-wide v5, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->granularity:J

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/types/TimeComparison;->evaluate(JJJ)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setCheckdirs(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->includeDirs:Z

    return-void
.end method

.method public setDatetime(Ljava/lang/String;)V
    .locals 2

    .line 105
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->dateTime:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 106
    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->millis:J

    return-void
.end method

.method public setGranularity(I)V
    .locals 2

    int-to-long v0, p1

    .line 124
    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->granularity:J

    return-void
.end method

.method public setMillis(J)V
    .locals 0

    .line 84
    iput-wide p1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->millis:J

    return-void
.end method

.method public varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .locals 5

    .line 161
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    if-eqz p1, :cond_6

    .line 163
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p1, v1

    .line 164
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "millis"

    .line 165
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setMillis(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 169
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid millisecond setting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setError(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v4, "datetime"

    .line 172
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setDatetime(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v4, "checkdirs"

    .line 174
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setCheckdirs(Z)V

    goto :goto_1

    :cond_2
    const-string v4, "granularity"

    .line 176
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setGranularity(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 180
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid granularity setting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v4, "when"

    .line 183
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 184
    new-instance v3, Lorg/apache/tools/ant/types/TimeComparison;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/apache/tools/ant/types/TimeComparison;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setWhen(Lorg/apache/tools/ant/types/TimeComparison;)V

    goto :goto_1

    :cond_4
    const-string v4, "pattern"

    .line 185
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 186
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setPattern(Ljava/lang/String;)V

    goto :goto_1

    .line 188
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid parameter "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setError(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->pattern:Ljava/lang/String;

    return-void
.end method

.method public setWhen(Lorg/apache/tools/ant/types/TimeComparison;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->when:Lorg/apache/tools/ant/types/TimeComparison;

    return-void
.end method

.method public setWhen(Lorg/apache/tools/ant/types/selectors/DateSelector$TimeComparisons;)V
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setWhen(Lorg/apache/tools/ant/types/TimeComparison;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{dateselector date: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->dateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " compare: "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->when:Lorg/apache/tools/ant/types/TimeComparison;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/TimeComparison;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " granularity: "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->granularity:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->pattern:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " pattern: "

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "}"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .locals 7

    const-string v0, "Date of "

    .line 199
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->dateTime:Ljava/lang/String;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    iget-wide v4, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->millis:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-string v0, "You must provide a datetime or the number of milliseconds."

    .line 200
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setError(Ljava/lang/String;)V

    goto :goto_2

    .line 202
    :cond_0
    iget-wide v4, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->millis:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_3

    if-eqz v1, :cond_3

    .line 203
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->pattern:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v4, "MM/dd/yyyy hh:mm a"

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    if-nez v1, :cond_2

    .line 205
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_1

    .line 206
    :cond_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 209
    :goto_1
    :try_start_0
    iget-object v5, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->dateTime:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setMillis(J)V

    .line 210
    iget-wide v5, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->millis:J

    cmp-long v1, v5, v2

    if-gez v1, :cond_3

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->dateTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " results in negative milliseconds value relative to epoch (January 1, 1970, 00:00:00 GMT)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->dateTime:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Cannot be parsed correctly. It should be in \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' format."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method
