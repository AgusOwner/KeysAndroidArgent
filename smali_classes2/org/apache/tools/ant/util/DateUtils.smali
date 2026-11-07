.class public final Lorg/apache/tools/ant/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final DATE_HEADER_FORMAT:Ljava/text/DateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DATE_HEADER_FORMAT_INT:Ljava/text/DateFormat;

.field public static final EN_US_DATE_FORMAT_MIN:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final EN_US_DATE_FORMAT_SEC:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final ISO8601_DATETIME_PATTERN:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field public static final ISO8601_DATE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final ISO8601_TIME_PATTERN:Ljava/lang/String; = "HH:mm:ss"

.field private static final LIMITS:[D

.field private static final MINUTES_FORMAT:Ljava/text/ChoiceFormat;

.field private static final MINUTES_PART:[Ljava/lang/String;

.field private static final MINUTE_SECONDS:Ljava/text/MessageFormat;

.field private static final ONE_HOUR:I = 0x3c

.field private static final ONE_MINUTE:I = 0x3c

.field private static final ONE_SECOND:I = 0x3e8

.field private static final SECONDS_FORMAT:Ljava/text/ChoiceFormat;

.field private static final SECONDS_PART:[Ljava/lang/String;

.field private static final TEN:I = 0xa

.field private static final iso8601WithTimeZone:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final iso8601normalizer:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss "

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/apache/tools/ant/util/DateUtils;->DATE_HEADER_FORMAT:Ljava/text/DateFormat;

    .line 75
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/apache/tools/ant/util/DateUtils;->DATE_HEADER_FORMAT_INT:Ljava/text/DateFormat;

    .line 79
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "{0}{1}"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/util/DateUtils;->MINUTE_SECONDS:Ljava/text/MessageFormat;

    const/4 v1, 0x3

    new-array v1, v1, [D

    .line 82
    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/tools/ant/util/DateUtils;->LIMITS:[D

    const-string v2, "1 minute "

    const-string v3, "{0,number,###############} minutes "

    const-string v4, ""

    .line 84
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/tools/ant/util/DateUtils;->MINUTES_PART:[Ljava/lang/String;

    const-string v3, "1 second"

    const-string v4, "{1,number} seconds"

    const-string v5, "0 seconds"

    .line 86
    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/apache/tools/ant/util/DateUtils;->SECONDS_PART:[Ljava/lang/String;

    .line 88
    new-instance v4, Ljava/text/ChoiceFormat;

    invoke-direct {v4, v1, v2}, Ljava/text/ChoiceFormat;-><init>([D[Ljava/lang/String;)V

    sput-object v4, Lorg/apache/tools/ant/util/DateUtils;->MINUTES_FORMAT:Ljava/text/ChoiceFormat;

    .line 91
    new-instance v2, Ljava/text/ChoiceFormat;

    invoke-direct {v2, v1, v3}, Ljava/text/ChoiceFormat;-><init>([D[Ljava/lang/String;)V

    sput-object v2, Lorg/apache/tools/ant/util/DateUtils;->SECONDS_FORMAT:Ljava/text/ChoiceFormat;

    .line 100
    new-instance v1, Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 101
    new-instance v3, Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticThreadLocal3;

    invoke-direct {v3, v1}, Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticThreadLocal3;-><init>(Ljava/util/function/Supplier;)V

    sput-object v3, Lorg/apache/tools/ant/util/DateUtils;->EN_US_DATE_FORMAT_MIN:Ljava/lang/ThreadLocal;

    .line 109
    new-instance v1, Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 110
    new-instance v3, Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticThreadLocal3;

    invoke-direct {v3, v1}, Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticThreadLocal3;-><init>(Ljava/util/function/Supplier;)V

    sput-object v3, Lorg/apache/tools/ant/util/DateUtils;->EN_US_DATE_FORMAT_SEC:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1, v4}, Ljava/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1, v2}, Ljava/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    .line 321
    new-instance v0, Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticLambda2;-><init>()V

    .line 322
    new-instance v1, Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticThreadLocal3;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/util/DateUtils$$ExternalSyntheticThreadLocal3;-><init>(Ljava/util/function/Supplier;)V

    sput-object v1, Lorg/apache/tools/ant/util/DateUtils;->iso8601WithTimeZone:Ljava/lang/ThreadLocal;

    const-string v0, "^(\\d{4,}-\\d{2}-\\d{2})[Tt ](\\d{2}:\\d{2}(:\\d{2}(\\.\\d{3})?)?) ?(?:Z|([+-]\\d{2})(?::?(\\d{2}))?)?$"

    .line 326
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/DateUtils;->iso8601normalizer:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 1

    .line 169
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string p0, "GMT"

    .line 170
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    .line 171
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 p0, 0x1

    .line 172
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    return-object v0
.end method

.method public static format(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 129
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p2}, Lorg/apache/tools/ant/util/DateUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 140
    invoke-static {p1}, Lorg/apache/tools/ant/util/DateUtils;->createDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object p1

    .line 141
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3e8

    .line 158
    div-long/2addr p0, v0

    const-wide/16 v0, 0x3c

    .line 159
    div-long v2, p0, v0

    .line 160
    sget-object v4, Lorg/apache/tools/ant/util/DateUtils;->MINUTE_SECONDS:Ljava/text/MessageFormat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    rem-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateForHeader()Ljava/lang/String;
    .locals 8

    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    const/4 v2, 0x0

    .line 231
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 232
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 233
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 234
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x7

    .line 235
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xe

    .line 236
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 231
    invoke-virtual/range {v1 .. v7}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v1

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    if-gez v1, :cond_0

    const-string v3, "-"

    goto :goto_0

    :cond_0
    const-string v3, "+"

    :goto_0
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v3, 0x36ee80

    .line 239
    div-int v3, v1, v3

    const v4, 0xea60

    .line 240
    div-int/2addr v1, v4

    mul-int/lit8 v4, v3, 0x3c

    sub-int/2addr v1, v4

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    const-string v5, "0"

    .line 242
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ge v1, v4, :cond_2

    const-string v3, "0"

    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    sget-object v1, Lorg/apache/tools/ant/util/DateUtils;->DATE_HEADER_FORMAT_INT:Ljava/text/DateFormat;

    monitor-enter v1

    .line 250
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 251
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getPhaseOfMoon(Ljava/util/Calendar;)I
    .locals 5

    const/4 v0, 0x6

    .line 212
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    .line 213
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/lit16 p0, p0, -0x76c

    rem-int/lit8 p0, p0, 0x13

    add-int/2addr p0, v2

    mul-int/lit8 v2, p0, 0xb

    add-int/lit8 v2, v2, 0x12

    .line 214
    rem-int/lit8 v2, v2, 0x1e

    const/16 v3, 0x19

    const/16 v4, 0xb

    if-ne v2, v3, :cond_0

    if-gt p0, v4, :cond_1

    :cond_0
    const/16 p0, 0x18

    if-ne v2, p0, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    add-int/2addr v1, v4

    .line 218
    rem-int/lit16 v1, v1, 0xb1

    div-int/lit8 v1, v1, 0x16

    and-int/lit8 p0, v1, 0x7

    return p0
.end method

.method static synthetic lambda$static$0()Ljava/text/DateFormat;
    .locals 3

    .line 101
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy hh:mm a"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method static synthetic lambda$static$1()Ljava/text/DateFormat;
    .locals 3

    .line 110
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy hh:mm:ss a"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method static synthetic lambda$static$2()Ljava/text/DateFormat;
    .locals 2

    .line 324
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseDateFromHeader(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 265
    sget-object v0, Lorg/apache/tools/ant/util/DateUtils;->DATE_HEADER_FORMAT_INT:Ljava/text/DateFormat;

    monitor-enter v0

    .line 266
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 267
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static parseIso8601DateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static parseIso8601DateTimeOrDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 315
    :try_start_0
    invoke-static {p0}, Lorg/apache/tools/ant/util/DateUtils;->parseIso8601DateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 317
    :catch_0
    invoke-static {p0}, Lorg/apache/tools/ant/util/DateUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static parseLenientDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 349
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 354
    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/tools/ant/util/DateUtils;->EN_US_DATE_FORMAT_MIN:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 359
    :catch_1
    :try_start_2
    sget-object v0, Lorg/apache/tools/ant/util/DateUtils;->EN_US_DATE_FORMAT_SEC:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 363
    :catch_2
    sget-object v0, Lorg/apache/tools/ant/util/DateUtils;->iso8601normalizer:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 367
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v2, 0x3

    .line 368
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v2, 0x4

    .line 369
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v1, ".000 "

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v1, 0x5

    .line 370
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v1, "+00"

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v1, 0x6

    .line 371
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v0, "00"

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 372
    sget-object v0, Lorg/apache/tools/ant/util/DateUtils;->iso8601WithTimeZone:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 365
    :cond_4
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
