.class public Lorg/apache/tools/ant/types/resources/selectors/Date;
.super Ljava/lang/Object;
.source "Date.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final MILLIS_OR_DATETIME:Ljava/lang/String; = "Either the millis or the datetime attribute must be set."


# instance fields
.field private dateTime:Ljava/lang/String;

.field private granularity:J

.field private millis:Ljava/lang/Long;

.field private pattern:Ljava/lang/String;

.field private when:Lorg/apache/tools/ant/types/TimeComparison;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/resources/selectors/Date;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->millis:Ljava/lang/Long;

    .line 44
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->dateTime:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->pattern:Ljava/lang/String;

    .line 46
    sget-object v0, Lorg/apache/tools/ant/types/TimeComparison;->EQUAL:Lorg/apache/tools/ant/types/TimeComparison;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->when:Lorg/apache/tools/ant/types/TimeComparison;

    .line 47
    sget-object v0, Lorg/apache/tools/ant/types/resources/selectors/Date;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->granularity:J

    return-void
.end method


# virtual methods
.method public declared-synchronized getDatetime()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->dateTime:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGranularity()J
    .locals 2

    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->granularity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMillis()J
    .locals 2

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->millis:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPattern()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->pattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWhen()Lorg/apache/tools/ant/types/TimeComparison;
    .locals 1

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->when:Lorg/apache/tools/ant/types/TimeComparison;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 8

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->dateTime:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->millis:Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Either the millis or the datetime attribute must be set."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->millis:Ljava/lang/Long;

    if-nez v0, :cond_5

    .line 140
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->pattern:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v1, "MM/dd/yyyy hh:mm a"

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-nez v0, :cond_3

    .line 142
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_2

    .line 143
    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    :try_start_1
    iget-object v4, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->dateTime:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4

    .line 151
    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/types/resources/selectors/Date;->setMillis(J)V

    goto :goto_3

    .line 147
    :cond_4
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Date of %s results in negative milliseconds value relative to epoch (January 1, 1970, 00:00:00 GMT)."

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->dateTime:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-direct {p1, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :catch_0
    :try_start_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Date of %s Cannot be parsed correctly. It should be in \'%s\' format."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->dateTime:Ljava/lang/String;

    aput-object v5, v4, v3

    aput-object v1, v4, v2

    invoke-direct {p1, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 158
    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->when:Lorg/apache/tools/ant/types/TimeComparison;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v1

    iget-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->millis:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->granularity:J

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/types/TimeComparison;->evaluate(JJJ)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDateTime(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 70
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->dateTime:Ljava/lang/String;

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->millis:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setGranularity(J)V
    .locals 0

    monitor-enter p0

    .line 87
    :try_start_0
    iput-wide p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->granularity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMillis(J)V
    .locals 0

    monitor-enter p0

    .line 54
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->millis:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPattern(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 103
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->pattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setWhen(Lorg/apache/tools/ant/types/TimeComparison;)V
    .locals 0

    monitor-enter p0

    .line 119
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->when:Lorg/apache/tools/ant/types/TimeComparison;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
